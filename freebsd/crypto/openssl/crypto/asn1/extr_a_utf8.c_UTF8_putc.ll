; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_utf8.c_UTF8_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_utf8.c_UTF8_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UTF8_putc(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 6, i32* %6, align 4
  br label %16

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %214

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %10
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %17, 128
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i8
  %25 = load i8*, i8** %5, align 8
  store i8 %24, i8* %25, align 1
  br label %26

26:                                               ; preds = %22, %19
  store i32 1, i32* %4, align 4
  br label %214

27:                                               ; preds = %16
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %28, 2048
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %214

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i64, i64* %7, align 8
  %39 = lshr i64 %38, 6
  %40 = and i64 %39, 31
  %41 = or i64 %40, 192
  %42 = trunc i64 %41 to i8
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  store i8 %42, i8* %43, align 1
  %45 = load i64, i64* %7, align 8
  %46 = and i64 %45, 63
  %47 = or i64 %46, 128
  %48 = trunc i64 %47 to i8
  %49 = load i8*, i8** %5, align 8
  store i8 %48, i8* %49, align 1
  br label %50

50:                                               ; preds = %37, %34
  store i32 2, i32* %4, align 4
  br label %214

51:                                               ; preds = %27
  %52 = load i64, i64* %7, align 8
  %53 = icmp ult i64 %52, 65536
  br i1 %53, label %54, label %82

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %214

58:                                               ; preds = %54
  %59 = load i8*, i8** %5, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load i64, i64* %7, align 8
  %63 = lshr i64 %62, 12
  %64 = and i64 %63, 15
  %65 = or i64 %64, 224
  %66 = trunc i64 %65 to i8
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %5, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i64, i64* %7, align 8
  %70 = lshr i64 %69, 6
  %71 = and i64 %70, 63
  %72 = or i64 %71, 128
  %73 = trunc i64 %72 to i8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i64, i64* %7, align 8
  %77 = and i64 %76, 63
  %78 = or i64 %77, 128
  %79 = trunc i64 %78 to i8
  %80 = load i8*, i8** %5, align 8
  store i8 %79, i8* %80, align 1
  br label %81

81:                                               ; preds = %61, %58
  store i32 3, i32* %4, align 4
  br label %214

82:                                               ; preds = %51
  %83 = load i64, i64* %7, align 8
  %84 = icmp ult i64 %83, 2097152
  br i1 %84, label %85, label %120

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 4
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 -1, i32* %4, align 4
  br label %214

89:                                               ; preds = %85
  %90 = load i8*, i8** %5, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %119

92:                                               ; preds = %89
  %93 = load i64, i64* %7, align 8
  %94 = lshr i64 %93, 18
  %95 = and i64 %94, 7
  %96 = or i64 %95, 240
  %97 = trunc i64 %96 to i8
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %5, align 8
  store i8 %97, i8* %98, align 1
  %100 = load i64, i64* %7, align 8
  %101 = lshr i64 %100, 12
  %102 = and i64 %101, 63
  %103 = or i64 %102, 128
  %104 = trunc i64 %103 to i8
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %5, align 8
  store i8 %104, i8* %105, align 1
  %107 = load i64, i64* %7, align 8
  %108 = lshr i64 %107, 6
  %109 = and i64 %108, 63
  %110 = or i64 %109, 128
  %111 = trunc i64 %110 to i8
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %5, align 8
  store i8 %111, i8* %112, align 1
  %114 = load i64, i64* %7, align 8
  %115 = and i64 %114, 63
  %116 = or i64 %115, 128
  %117 = trunc i64 %116 to i8
  %118 = load i8*, i8** %5, align 8
  store i8 %117, i8* %118, align 1
  br label %119

119:                                              ; preds = %92, %89
  store i32 4, i32* %4, align 4
  br label %214

120:                                              ; preds = %82
  %121 = load i64, i64* %7, align 8
  %122 = icmp ult i64 %121, 67108864
  br i1 %122, label %123, label %165

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 5
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 -1, i32* %4, align 4
  br label %214

127:                                              ; preds = %123
  %128 = load i8*, i8** %5, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %164

130:                                              ; preds = %127
  %131 = load i64, i64* %7, align 8
  %132 = lshr i64 %131, 24
  %133 = and i64 %132, 3
  %134 = or i64 %133, 248
  %135 = trunc i64 %134 to i8
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %5, align 8
  store i8 %135, i8* %136, align 1
  %138 = load i64, i64* %7, align 8
  %139 = lshr i64 %138, 18
  %140 = and i64 %139, 63
  %141 = or i64 %140, 128
  %142 = trunc i64 %141 to i8
  %143 = load i8*, i8** %5, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %5, align 8
  store i8 %142, i8* %143, align 1
  %145 = load i64, i64* %7, align 8
  %146 = lshr i64 %145, 12
  %147 = and i64 %146, 63
  %148 = or i64 %147, 128
  %149 = trunc i64 %148 to i8
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %5, align 8
  store i8 %149, i8* %150, align 1
  %152 = load i64, i64* %7, align 8
  %153 = lshr i64 %152, 6
  %154 = and i64 %153, 63
  %155 = or i64 %154, 128
  %156 = trunc i64 %155 to i8
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %5, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i64, i64* %7, align 8
  %160 = and i64 %159, 63
  %161 = or i64 %160, 128
  %162 = trunc i64 %161 to i8
  %163 = load i8*, i8** %5, align 8
  store i8 %162, i8* %163, align 1
  br label %164

164:                                              ; preds = %130, %127
  store i32 5, i32* %4, align 4
  br label %214

165:                                              ; preds = %120
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %166, 6
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 -1, i32* %4, align 4
  br label %214

169:                                              ; preds = %165
  %170 = load i8*, i8** %5, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %213

172:                                              ; preds = %169
  %173 = load i64, i64* %7, align 8
  %174 = lshr i64 %173, 30
  %175 = and i64 %174, 1
  %176 = or i64 %175, 252
  %177 = trunc i64 %176 to i8
  %178 = load i8*, i8** %5, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %5, align 8
  store i8 %177, i8* %178, align 1
  %180 = load i64, i64* %7, align 8
  %181 = lshr i64 %180, 24
  %182 = and i64 %181, 63
  %183 = or i64 %182, 128
  %184 = trunc i64 %183 to i8
  %185 = load i8*, i8** %5, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %5, align 8
  store i8 %184, i8* %185, align 1
  %187 = load i64, i64* %7, align 8
  %188 = lshr i64 %187, 18
  %189 = and i64 %188, 63
  %190 = or i64 %189, 128
  %191 = trunc i64 %190 to i8
  %192 = load i8*, i8** %5, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %5, align 8
  store i8 %191, i8* %192, align 1
  %194 = load i64, i64* %7, align 8
  %195 = lshr i64 %194, 12
  %196 = and i64 %195, 63
  %197 = or i64 %196, 128
  %198 = trunc i64 %197 to i8
  %199 = load i8*, i8** %5, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %5, align 8
  store i8 %198, i8* %199, align 1
  %201 = load i64, i64* %7, align 8
  %202 = lshr i64 %201, 6
  %203 = and i64 %202, 63
  %204 = or i64 %203, 128
  %205 = trunc i64 %204 to i8
  %206 = load i8*, i8** %5, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %5, align 8
  store i8 %205, i8* %206, align 1
  %208 = load i64, i64* %7, align 8
  %209 = and i64 %208, 63
  %210 = or i64 %209, 128
  %211 = trunc i64 %210 to i8
  %212 = load i8*, i8** %5, align 8
  store i8 %211, i8* %212, align 1
  br label %213

213:                                              ; preds = %172, %169
  store i32 6, i32* %4, align 4
  br label %214

214:                                              ; preds = %213, %168, %164, %126, %119, %88, %81, %57, %50, %33, %26, %14
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_ok.c_ok_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_ok.c_ok_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i64, i32*, i64 }

@IOBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @ok_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ok_read(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %200

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.TYPE_3__* @BIO_get_data(i32* %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %11, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32* @BIO_next(i32* %19)
  store i32* %20, i32** %12, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %22 = icmp eq %struct.TYPE_3__* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load i32*, i32** %12, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @BIO_get_init(i32* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23, %16
  store i32 0, i32* %4, align 4
  br label %200

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %193, %31
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %194

35:                                               ; preds = %32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %132

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %51, %40
  %54 = load i8*, i8** %6, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @memcpy(i8* %54, i32* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %131

87:                                               ; preds = %53
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %93, %96
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %87
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = sub i64 %103, %106
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @memmove(i32* %113, i32* %120, i32 %123)
  br label %128

125:                                              ; preds = %87
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  br label %128

128:                                              ; preds = %125, %99
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 7
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %53
  br label %132

132:                                              ; preds = %131, %35
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %194

136:                                              ; preds = %132
  %137 = load i32, i32* @IOBS, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %137, %140
  store i32 %141, i32* %10, align 4
  %142 = load i32*, i32** %12, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 6
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @BIO_read(i32* %142, i32* %150, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp sle i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %136
  br label %194

156:                                              ; preds = %136
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %174

166:                                              ; preds = %156
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @sig_in(i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = load i32*, i32** %5, align 8
  %172 = call i32 @BIO_clear_retry_flags(i32* %171)
  store i32 0, i32* %4, align 4
  br label %200

173:                                              ; preds = %166
  br label %174

174:                                              ; preds = %173, %156
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %174
  %180 = load i32*, i32** %5, align 8
  %181 = call i32 @block_in(i32* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %179
  %184 = load i32*, i32** %5, align 8
  %185 = call i32 @BIO_clear_retry_flags(i32* %184)
  store i32 0, i32* %4, align 4
  br label %200

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186, %174
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = icmp sle i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %194

193:                                              ; preds = %187
  br label %32

194:                                              ; preds = %192, %155, %135, %32
  %195 = load i32*, i32** %5, align 8
  %196 = call i32 @BIO_clear_retry_flags(i32* %195)
  %197 = load i32*, i32** %5, align 8
  %198 = call i32 @BIO_copy_next_retry(i32* %197)
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %194, %183, %170, %30, %15
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local %struct.TYPE_3__* @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i64 @BIO_get_init(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @BIO_read(i32*, i32*, i32) #1

declare dso_local i32 @sig_in(i32*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @block_in(i32*) #1

declare dso_local i32 @BIO_copy_next_retry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

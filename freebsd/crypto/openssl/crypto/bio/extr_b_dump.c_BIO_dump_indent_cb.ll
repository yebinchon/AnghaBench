; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_dump.c_BIO_dump_indent_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_b_dump.c_BIO_dump_indent_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%*s%04x - \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%02x%c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@os_toascii = common dso_local global i8* null, align 8
@os_toebcdic = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_dump_indent_cb(i32 (i8*, i64, i8*)* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32 (i8*, i64, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [289 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store i32 (i8*, i64, i8*)* %0, i32 (i8*, i64, i8*)** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %10, align 4
  br label %27

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 128
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 128, i32* %10, align 4
  br label %26

26:                                               ; preds = %25, %22
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @DUMP_WIDTH_LESS_INDENT(i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %18, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %18, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %38, %27
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %201, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %204

46:                                               ; preds = %42
  %47 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 0
  %48 = load i32, i32* %10, align 4
  %49 = trunc i32 %48 to i8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %18, align 4
  %52 = mul nsw i32 %50, %51
  %53 = call i32 (i8*, i32, i8*, i8, ...) @BIO_snprintf(i8* %47, i32 289, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8 zeroext %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %105, %46
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %108

58:                                               ; preds = %54
  %59 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 0
  %60 = load i32, i32* %16, align 4
  %61 = call i64 @SPACE(i8* %59, i32 %60, i32 3)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %104

63:                                               ; preds = %58
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %18, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 0
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = call i32 @strcpy(i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %101

77:                                               ; preds = %63
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %18, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 255
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %17, align 1
  %91 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 0
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %17, align 1
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %96, 7
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 45, i32 32
  %100 = call i32 (i8*, i32, i8*, i8, ...) @BIO_snprintf(i8* %94, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %95, i32 %99)
  br label %101

101:                                              ; preds = %77, %71
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 3
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %101, %58
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %54

108:                                              ; preds = %54
  %109 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 0
  %110 = load i32, i32* %16, align 4
  %111 = call i64 @SPACE(i8* %109, i32 %110, i32 2)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 0
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = call i32 @strcpy(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %113, %108
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %176, %121
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %18, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %179

126:                                              ; preds = %122
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %18, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %9, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %179

135:                                              ; preds = %126
  %136 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 0
  %137 = load i32, i32* %16, align 4
  %138 = call i64 @SPACE(i8* %136, i32 %137, i32 1)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %175

140:                                              ; preds = %135
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %18, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %141, i64 %145
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 255
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %17, align 1
  %154 = load i8, i8* %17, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp sge i32 %155, 32
  br i1 %156, label %157, label %164

157:                                              ; preds = %140
  %158 = load i8, i8* %17, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp sle i32 %159, 126
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i8, i8* %17, align 1
  %163 = zext i8 %162 to i32
  br label %165

164:                                              ; preds = %157, %140
  br label %165

165:                                              ; preds = %164, %161
  %166 = phi i32 [ %163, %161 ], [ 46, %164 ]
  %167 = trunc i32 %166 to i8
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %16, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 %170
  store i8 %167, i8* %171, align 1
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 %173
  store i8 0, i8* %174, align 1
  br label %175

175:                                              ; preds = %165, %135
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %14, align 4
  br label %122

179:                                              ; preds = %134, %122
  %180 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 0
  %181 = load i32, i32* %16, align 4
  %182 = call i64 @SPACE(i8* %180, i32 %181, i32 1)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = load i32, i32* %16, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %16, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 %187
  store i8 10, i8* %188, align 1
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 %190
  store i8 0, i8* %191, align 1
  br label %192

192:                                              ; preds = %184, %179
  %193 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %6, align 8
  %194 = getelementptr inbounds [289 x i8], [289 x i8]* %12, i64 0, i64 0
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = load i8*, i8** %7, align 8
  %198 = call i32 %193(i8* %194, i64 %196, i8* %197)
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %11, align 4
  br label %201

201:                                              ; preds = %192
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %13, align 4
  br label %42

204:                                              ; preds = %42
  %205 = load i32, i32* %11, align 4
  ret i32 %205
}

declare dso_local i32 @DUMP_WIDTH_LESS_INDENT(i32) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i8 zeroext, ...) #1

declare dso_local i64 @SPACE(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_oid_to_str.c_gss_oid_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_oid_to_str.c_gss_oid_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i8*, i64 }

@GSS_C_NULL_OID = common dso_local global %struct.TYPE_8__* null, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_oid_to_str(i64* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i64* %0, i64** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %15 = load i64*, i64** %5, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = call i32 @_gss_buffer_zero(%struct.TYPE_7__* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @GSS_C_NULL_OID, align 8
  %20 = icmp eq %struct.TYPE_8__* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %22, i64* %4, align 8
  br label %179

23:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i64
  store i64 %31, i64* %9, align 8
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %33 = load i64, i64* %9, align 8
  %34 = udiv i64 %33, 40
  %35 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %37 = call i64 @strlen(i8* %36)
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %11, align 8
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %41 = load i64, i64* %9, align 8
  %42 = urem i64 %41, 40
  %43 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %45 = call i64 @strlen(i8* %44)
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %11, align 8
  store i64 1, i64* %12, align 8
  br label %48

48:                                               ; preds = %92, %23
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %95

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 7
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %57, 64
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load i64, i64* %9, align 8
  %61 = shl i64 %60, 7
  %62 = load i8*, i8** %13, align 8
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 127
  %68 = sext i32 %67 to i64
  %69 = or i64 %61, %68
  store i64 %69, i64* %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 7
  store i32 %71, i32* %10, align 4
  br label %75

72:                                               ; preds = %54
  %73 = load i64*, i64** %5, align 8
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %74, i64* %4, align 8
  br label %179

75:                                               ; preds = %59
  %76 = load i8*, i8** %13, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 128
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @sprintf(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %85)
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %88 = call i64 @strlen(i8* %87)
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %11, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %83, %75
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %12, align 8
  br label %48

95:                                               ; preds = %48
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %96, 4
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i64 @malloc(i64 %98)
  %100 = inttoptr i64 %99 to i8*
  store i8* %100, i8** %14, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %175

102:                                              ; preds = %95
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @strcpy(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i8*, i8** %13, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i64
  store i64 %108, i64* %9, align 8
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %110 = load i64, i64* %9, align 8
  %111 = udiv i64 %110, 40
  %112 = call i32 @sprintf(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %111)
  %113 = load i8*, i8** %14, align 8
  %114 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %115 = call i32 @strcat(i8* %113, i8* %114)
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %117 = load i64, i64* %9, align 8
  %118 = urem i64 %117, 40
  %119 = call i32 @sprintf(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %118)
  %120 = load i8*, i8** %14, align 8
  %121 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %122 = call i32 @strcat(i8* %120, i8* %121)
  store i64 0, i64* %9, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %13, align 8
  store i64 1, i64* %12, align 8
  br label %127

127:                                              ; preds = %159, %102
  %128 = load i64, i64* %12, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ult i64 %128, %131
  br i1 %132, label %133, label %162

133:                                              ; preds = %127
  %134 = load i64, i64* %9, align 8
  %135 = shl i64 %134, 7
  %136 = load i8*, i8** %13, align 8
  %137 = load i64, i64* %12, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %140, 127
  %142 = sext i32 %141 to i64
  %143 = or i64 %135, %142
  store i64 %143, i64* %9, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = load i64, i64* %12, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %148, 128
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %133
  %152 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %153 = load i64, i64* %9, align 8
  %154 = call i32 @sprintf(i8* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %153)
  %155 = load i8*, i8** %14, align 8
  %156 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %157 = call i32 @strcat(i8* %155, i8* %156)
  store i64 0, i64* %9, align 8
  br label %158

158:                                              ; preds = %151, %133
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %12, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %12, align 8
  br label %127

162:                                              ; preds = %127
  %163 = load i8*, i8** %14, align 8
  %164 = call i32 @strcat(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %165 = load i8*, i8** %14, align 8
  %166 = call i64 @strlen(i8* %165)
  %167 = add nsw i64 %166, 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  %173 = load i64*, i64** %5, align 8
  store i64 0, i64* %173, align 8
  %174 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %174, i64* %4, align 8
  br label %179

175:                                              ; preds = %95
  %176 = load i64, i64* @ENOMEM, align 8
  %177 = load i64*, i64** %5, align 8
  store i64 %176, i64* %177, align 8
  %178 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %178, i64* %4, align 8
  br label %179

179:                                              ; preds = %175, %162, %72, %21
  %180 = load i64, i64* %4, align 8
  ret i64 %180
}

declare dso_local i32 @_gss_buffer_zero(%struct.TYPE_7__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

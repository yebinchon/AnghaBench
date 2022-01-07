; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_decapsulate_token.c_gss_decapsulate_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_decapsulate_token.c_gss_decapsulate_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64 }
%struct.TYPE_8__ = type { i8, i8* }

@GSS_S_DEFECTIVE_TOKEN = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_decapsulate_token(%struct.TYPE_7__* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = call i32 @_gss_buffer_zero(%struct.TYPE_7__* %19)
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 96
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %3
  %29 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %29, i32* %4, align 4
  br label %168

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %38, i32* %4, align 4
  br label %168

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  store i64 %48, i64* %10, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %9, align 8
  br label %86

53:                                               ; preds = %39
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 127
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %11, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %67, i32* %4, align 4
  br label %168

68:                                               ; preds = %53
  store i64 0, i64* %10, align 8
  br label %69

69:                                               ; preds = %72, %68
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i64, i64* %10, align 8
  %74 = shl i64 %73, 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i64
  %78 = or i64 %74, %77
  store i64 %78, i64* %10, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %11, align 8
  br label %69

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85, %45
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %91, i32* %4, align 4
  br label %168

92:                                               ; preds = %86
  %93 = load i64, i64* %9, align 8
  %94 = icmp ult i64 %93, 2
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %98, 6
  br i1 %99, label %100, label %102

100:                                              ; preds = %95, %92
  %101 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %101, i32* %4, align 4
  br label %168

102:                                              ; preds = %95
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 128
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %102
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i64
  %114 = load i64, i64* %9, align 8
  %115 = sub i64 %114, 2
  %116 = icmp ugt i64 %113, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109, %102
  %118 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %118, i32* %4, align 4
  br label %168

119:                                              ; preds = %109
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8 %122, i8* %123, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  store i8* %125, i8** %8, align 8
  %126 = load i64, i64* %9, align 8
  %127 = sub i64 %126, 2
  store i64 %127, i64* %9, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i8* %128, i8** %129, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @gss_oid_equal(%struct.TYPE_8__* %12, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %119
  %134 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %134, i32* %4, align 4
  br label %168

135:                                              ; preds = %119
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %137 = load i8, i8* %136, align 8
  %138 = zext i8 %137 to i32
  %139 = load i8*, i8** %8, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %143 = load i8, i8* %142, align 8
  %144 = zext i8 %143 to i64
  %145 = load i64, i64* %9, align 8
  %146 = sub i64 %145, %144
  store i64 %146, i64* %9, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* %9, align 8
  %151 = call i8* @malloc(i64 %150)
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %135
  %159 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %159, i32* %4, align 4
  br label %168

160:                                              ; preds = %135
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = load i64, i64* %9, align 8
  %166 = call i32 @memcpy(i8* %163, i8* %164, i64 %165)
  %167 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %160, %158, %133, %117, %100, %90, %66, %37, %28
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @_gss_buffer_zero(%struct.TYPE_7__*) #1

declare dso_local i32 @gss_oid_equal(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

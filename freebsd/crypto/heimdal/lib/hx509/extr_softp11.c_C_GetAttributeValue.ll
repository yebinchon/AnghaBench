; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_GetAttributeValue.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_GetAttributeValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.session_state = type { i32 }
%struct.st_object = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"GetAttributeValue: %lx\0A\00", align 1
@CKR_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"object not found: %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\09getting 0x%08lx\0A\00", align 1
@NULL_PTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"key type: 0x%08lx not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @C_GetAttributeValue(i32 %0, i32 %1, %struct.TYPE_7__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.session_state*, align 8
  %11 = alloca %struct.st_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = call i32 (...) @INIT_CONTEXT()
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @HANDLE_OBJECT_ID(i32 %16)
  %18 = call i32 @st_logf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @VERIFY_SESSION_HANDLE(i32 %19, %struct.session_state** %10)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @object_handle_to_object(i32 %21, %struct.st_object** %11)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @CKR_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @HANDLE_OBJECT_ID(i32 %26)
  %28 = call i32 @st_logf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %5, align 4
  br label %180

30:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %175, %30
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %178

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @st_logf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %154, %35
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.st_object*, %struct.st_object** %11, align 8
  %45 = getelementptr inbounds %struct.st_object, %struct.st_object* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %157

48:                                               ; preds = %42
  %49 = load %struct.st_object*, %struct.st_object** %11, align 8
  %50 = getelementptr inbounds %struct.st_object, %struct.st_object* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i64 -1, i64* %62, align 8
  br label %157

63:                                               ; preds = %48
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.st_object*, %struct.st_object** %11, align 8
  %70 = getelementptr inbounds %struct.st_object, %struct.st_object* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %68, %77
  br i1 %78, label %79, label %153

79:                                               ; preds = %63
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NULL_PTR, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %139

87:                                               ; preds = %79
  %88 = load %struct.st_object*, %struct.st_object** %11, align 8
  %89 = getelementptr inbounds %struct.st_object, %struct.st_object* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %87
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.st_object*, %struct.st_object** %11, align 8
  %104 = getelementptr inbounds %struct.st_object, %struct.st_object* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp uge i64 %102, %111
  br i1 %112, label %113, label %138

113:                                              ; preds = %97
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.st_object*, %struct.st_object** %11, align 8
  %120 = getelementptr inbounds %struct.st_object, %struct.st_object* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.st_object*, %struct.st_object** %11, align 8
  %129 = getelementptr inbounds %struct.st_object, %struct.st_object* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @memcpy(i64 %118, i32 %127, i64 %136)
  br label %138

138:                                              ; preds = %113, %97
  br label %139

139:                                              ; preds = %138, %87, %79
  %140 = load %struct.st_object*, %struct.st_object** %11, align 8
  %141 = getelementptr inbounds %struct.st_object, %struct.st_object* %140, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %150 = load i64, i64* %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i64 %148, i64* %152, align 8
  br label %157

153:                                              ; preds = %63
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %42

157:                                              ; preds = %139, %58, %42
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.st_object*, %struct.st_object** %11, align 8
  %160 = getelementptr inbounds %struct.st_object, %struct.st_object* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %165 = load i64, i64* %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @st_logf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %168)
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %171 = load i64, i64* %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  store i64 -1, i64* %173, align 8
  br label %174

174:                                              ; preds = %163, %157
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %12, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %12, align 8
  br label %31

178:                                              ; preds = %31
  %179 = load i32, i32* @CKR_OK, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %178, %25
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @INIT_CONTEXT(...) #1

declare dso_local i32 @st_logf(i8*, i64) #1

declare dso_local i64 @HANDLE_OBJECT_ID(i32) #1

declare dso_local i32 @VERIFY_SESSION_HANDLE(i32, %struct.session_state**) #1

declare dso_local i32 @object_handle_to_object(i32, %struct.st_object**) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

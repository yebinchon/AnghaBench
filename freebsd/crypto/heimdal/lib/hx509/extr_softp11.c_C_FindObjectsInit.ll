; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_FindObjectsInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_softp11.c_C_FindObjectsInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.session_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"FindObjectsInit\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"application didn't do C_FindObjectsFinal\0A\00", align 1
@CKR_DEVICE_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"find all objects\0A\00", align 1
@CKR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @C_FindObjectsInit(i32 %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.session_state*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 @st_logf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 (...) @INIT_CONTEXT()
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @VERIFY_SESSION_HANDLE(i32 %12, %struct.session_state** %8)
  %14 = load %struct.session_state*, %struct.session_state** %8, align 8
  %15 = getelementptr inbounds %struct.session_state, %struct.session_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = call i32 @application_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.session_state*, %struct.session_state** %8, align 8
  %22 = call i32 @find_object_final(%struct.session_state* %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %142

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @print_attributes(%struct.TYPE_7__* %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 16
  %33 = trunc i64 %32 to i32
  %34 = call %struct.TYPE_8__* @calloc(i32 1, i32 %33)
  %35 = load %struct.session_state*, %struct.session_state** %8, align 8
  %36 = getelementptr inbounds %struct.session_state, %struct.session_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %37, align 8
  %38 = load %struct.session_state*, %struct.session_state** %8, align 8
  %39 = getelementptr inbounds %struct.session_state, %struct.session_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp eq %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = load i32, i32* @CKR_DEVICE_MEMORY, align 4
  store i32 %44, i32* %4, align 4
  br label %155

45:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %131, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %134

50:                                               ; preds = %46
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32* @malloc(i32 %56)
  %58 = load %struct.session_state*, %struct.session_state** %8, align 8
  %59 = getelementptr inbounds %struct.session_state, %struct.session_state* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  store i32* %57, i32** %65, align 8
  %66 = load %struct.session_state*, %struct.session_state** %8, align 8
  %67 = getelementptr inbounds %struct.session_state, %struct.session_state* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %50
  %77 = load %struct.session_state*, %struct.session_state** %8, align 8
  %78 = call i32 @find_object_final(%struct.session_state* %77)
  %79 = load i32, i32* @CKR_DEVICE_MEMORY, align 4
  store i32 %79, i32* %4, align 4
  br label %155

80:                                               ; preds = %50
  %81 = load %struct.session_state*, %struct.session_state** %8, align 8
  %82 = getelementptr inbounds %struct.session_state, %struct.session_state* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memcpy(i32* %89, i32 %95, i32 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.session_state*, %struct.session_state** %8, align 8
  %110 = getelementptr inbounds %struct.session_state, %struct.session_state* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i32 %108, i32* %116, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.session_state*, %struct.session_state** %8, align 8
  %124 = getelementptr inbounds %struct.session_state, %struct.session_state* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i32 %122, i32* %130, align 8
  br label %131

131:                                              ; preds = %80
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %46

134:                                              ; preds = %46
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.session_state*, %struct.session_state** %8, align 8
  %137 = getelementptr inbounds %struct.session_state, %struct.session_state* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  %139 = load %struct.session_state*, %struct.session_state** %8, align 8
  %140 = getelementptr inbounds %struct.session_state, %struct.session_state* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  br label %153

142:                                              ; preds = %23
  %143 = call i32 @st_logf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %144 = load %struct.session_state*, %struct.session_state** %8, align 8
  %145 = getelementptr inbounds %struct.session_state, %struct.session_state* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %146, align 8
  %147 = load %struct.session_state*, %struct.session_state** %8, align 8
  %148 = getelementptr inbounds %struct.session_state, %struct.session_state* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  store i32 0, i32* %149, align 4
  %150 = load %struct.session_state*, %struct.session_state** %8, align 8
  %151 = getelementptr inbounds %struct.session_state, %struct.session_state* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  br label %153

153:                                              ; preds = %142, %134
  %154 = load i32, i32* @CKR_OK, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %76, %43
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @st_logf(i8*) #1

declare dso_local i32 @INIT_CONTEXT(...) #1

declare dso_local i32 @VERIFY_SESSION_HANDLE(i32, %struct.session_state**) #1

declare dso_local i32 @application_error(i8*) #1

declare dso_local i32 @find_object_final(%struct.session_state*) #1

declare dso_local i32 @print_attributes(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

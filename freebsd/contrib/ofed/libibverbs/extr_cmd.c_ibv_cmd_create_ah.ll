; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_pd = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ibv_ah = type { %struct.TYPE_10__*, i32 }
%struct.ibv_ah_attr = type { %struct.TYPE_9__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ibv_create_ah_resp = type { i32 }
%struct.ibv_create_ah = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@CREATE_AH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_create_ah(%struct.ibv_pd* %0, %struct.ibv_ah* %1, %struct.ibv_ah_attr* %2, %struct.ibv_create_ah_resp* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibv_pd*, align 8
  %8 = alloca %struct.ibv_ah*, align 8
  %9 = alloca %struct.ibv_ah_attr*, align 8
  %10 = alloca %struct.ibv_create_ah_resp*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ibv_create_ah, align 8
  store %struct.ibv_pd* %0, %struct.ibv_pd** %7, align 8
  store %struct.ibv_ah* %1, %struct.ibv_ah** %8, align 8
  store %struct.ibv_ah_attr* %2, %struct.ibv_ah_attr** %9, align 8
  store %struct.ibv_create_ah_resp* %3, %struct.ibv_create_ah_resp** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* @CREATE_AH, align 4
  %14 = load %struct.ibv_create_ah_resp*, %struct.ibv_create_ah_resp** %10, align 8
  %15 = load i64, i64* %11, align 8
  %16 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_create_ah* %12, i32 56, i32 %13, %struct.ibv_create_ah_resp* %14, i64 %15)
  %17 = load %struct.ibv_ah*, %struct.ibv_ah** %8, align 8
  %18 = ptrtoint %struct.ibv_ah* %17 to i64
  %19 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load %struct.ibv_pd*, %struct.ibv_pd** %7, align 8
  %21 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %9, align 8
  %25 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %9, align 8
  %30 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %9, align 8
  %35 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %9, align 8
  %40 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %9, align 8
  %45 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %9, align 8
  %50 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %9, align 8
  %55 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 8
  %61 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %9, align 8
  %62 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 4
  %68 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %9, align 8
  %69 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %9, align 8
  %76 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = getelementptr inbounds %struct.ibv_create_ah, %struct.ibv_create_ah* %12, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %9, align 8
  %87 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @memcpy(i32 %85, i32 %90, i32 16)
  %92 = load %struct.ibv_pd*, %struct.ibv_pd** %7, align 8
  %93 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @write(i32 %96, %struct.ibv_create_ah* %12, i32 56)
  %98 = sext i32 %97 to i64
  %99 = icmp ne i64 %98, 56
  br i1 %99, label %100, label %102

100:                                              ; preds = %5
  %101 = load i32, i32* @errno, align 4
  store i32 %101, i32* %6, align 4
  br label %116

102:                                              ; preds = %5
  %103 = load %struct.ibv_create_ah_resp*, %struct.ibv_create_ah_resp** %10, align 8
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_ah_resp* %103, i64 %104)
  %106 = load %struct.ibv_create_ah_resp*, %struct.ibv_create_ah_resp** %10, align 8
  %107 = getelementptr inbounds %struct.ibv_create_ah_resp, %struct.ibv_create_ah_resp* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ibv_ah*, %struct.ibv_ah** %8, align 8
  %110 = getelementptr inbounds %struct.ibv_ah, %struct.ibv_ah* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.ibv_pd*, %struct.ibv_pd** %7, align 8
  %112 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = load %struct.ibv_ah*, %struct.ibv_ah** %8, align 8
  %115 = getelementptr inbounds %struct.ibv_ah, %struct.ibv_ah* %114, i32 0, i32 0
  store %struct.TYPE_10__* %113, %struct.TYPE_10__** %115, align 8
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %102, %100
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_create_ah*, i32, i32, %struct.ibv_create_ah_resp*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @write(i32, %struct.ibv_create_ah*, i32) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_ah_resp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

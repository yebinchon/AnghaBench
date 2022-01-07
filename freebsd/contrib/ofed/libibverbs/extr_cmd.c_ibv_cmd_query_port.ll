; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_query_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ibv_query_port = type { i32, i32 }
%struct.ibv_query_port_resp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@QUERY_PORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_query_port(%struct.ibv_context* %0, i32 %1, %struct.ibv_port_attr* %2, %struct.ibv_query_port* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibv_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ibv_port_attr*, align 8
  %10 = alloca %struct.ibv_query_port*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ibv_query_port_resp, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ibv_port_attr* %2, %struct.ibv_port_attr** %9, align 8
  store %struct.ibv_query_port* %3, %struct.ibv_query_port** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.ibv_query_port*, %struct.ibv_query_port** %10, align 8
  %14 = load i64, i64* %11, align 8
  %15 = load i32, i32* @QUERY_PORT, align 4
  %16 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_query_port* %13, i64 %14, i32 %15, %struct.ibv_query_port_resp* %12, i32 80)
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.ibv_query_port*, %struct.ibv_query_port** %10, align 8
  %19 = getelementptr inbounds %struct.ibv_query_port, %struct.ibv_query_port* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ibv_query_port*, %struct.ibv_query_port** %10, align 8
  %21 = getelementptr inbounds %struct.ibv_query_port, %struct.ibv_query_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memset(i32 %22, i32 0, i32 4)
  %24 = load %struct.ibv_context*, %struct.ibv_context** %7, align 8
  %25 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ibv_query_port*, %struct.ibv_query_port** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @write(i32 %26, %struct.ibv_query_port* %27, i64 %28)
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %6, align 4
  br label %116

34:                                               ; preds = %5
  %35 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_query_port_resp* %12, i32 80)
  %36 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 19
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %39 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %38, i32 0, i32 19
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 18
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %43 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %42, i32 0, i32 18
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 17
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %47 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %46, i32 0, i32 17
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 16
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %51 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %50, i32 0, i32 16
  store i32 %49, i32* %51, align 4
  %52 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 15
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %55 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %54, i32 0, i32 15
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 14
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %59 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %58, i32 0, i32 14
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 13
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %63 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %62, i32 0, i32 13
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 12
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %67 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %66, i32 0, i32 12
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %71 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %70, i32 0, i32 11
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %75 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %79 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %83 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %87 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %91 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %95 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %99 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %103 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %107 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %111 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = getelementptr inbounds %struct.ibv_query_port_resp, %struct.ibv_query_port_resp* %12, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %9, align 8
  %115 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %34, %32
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_query_port*, i64, i32, %struct.ibv_query_port_resp*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @write(i32, %struct.ibv_query_port*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_query_port_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

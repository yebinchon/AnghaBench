; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_socket_wrapper.c_swrap_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_info = type { %struct.socket_info*, %struct.socket_info*, %struct.socket_info*, %struct.socket_info* }

@sockets = common dso_local global i32 0, align 4
@SWRAP_CLOSE_SEND = common dso_local global i32 0, align 4
@SWRAP_CLOSE_RECV = common dso_local global i32 0, align 4
@SWRAP_CLOSE_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swrap_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.socket_info* @find_socket_info(i32 %6)
  store %struct.socket_info* %7, %struct.socket_info** %4, align 8
  %8 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %9 = icmp ne %struct.socket_info* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @real_close(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %97

13:                                               ; preds = %1
  %14 = load i32, i32* @sockets, align 4
  %15 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %16 = call i32 @SWRAP_DLIST_REMOVE(i32 %14, %struct.socket_info* %15)
  %17 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %18 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %17, i32 0, i32 2
  %19 = load %struct.socket_info*, %struct.socket_info** %18, align 8
  %20 = icmp ne %struct.socket_info* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %23 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %22, i32 0, i32 1
  %24 = load %struct.socket_info*, %struct.socket_info** %23, align 8
  %25 = icmp ne %struct.socket_info* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %28 = load i32, i32* @SWRAP_CLOSE_SEND, align 4
  %29 = call i32 @swrap_dump_packet(%struct.socket_info* %27, i32* null, i32 %28, i32* null, i32 0)
  br label %30

30:                                               ; preds = %26, %21, %13
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @real_close(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %34 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %33, i32 0, i32 2
  %35 = load %struct.socket_info*, %struct.socket_info** %34, align 8
  %36 = icmp ne %struct.socket_info* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %39 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %38, i32 0, i32 1
  %40 = load %struct.socket_info*, %struct.socket_info** %39, align 8
  %41 = icmp ne %struct.socket_info* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %44 = load i32, i32* @SWRAP_CLOSE_RECV, align 4
  %45 = call i32 @swrap_dump_packet(%struct.socket_info* %43, i32* null, i32 %44, i32* null, i32 0)
  %46 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %47 = load i32, i32* @SWRAP_CLOSE_ACK, align 4
  %48 = call i32 @swrap_dump_packet(%struct.socket_info* %46, i32* null, i32 %47, i32* null, i32 0)
  br label %49

49:                                               ; preds = %42, %37, %30
  %50 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %51 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %50, i32 0, i32 3
  %52 = load %struct.socket_info*, %struct.socket_info** %51, align 8
  %53 = icmp ne %struct.socket_info* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %56 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %55, i32 0, i32 3
  %57 = load %struct.socket_info*, %struct.socket_info** %56, align 8
  %58 = call i32 @free(%struct.socket_info* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %61 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %60, i32 0, i32 2
  %62 = load %struct.socket_info*, %struct.socket_info** %61, align 8
  %63 = icmp ne %struct.socket_info* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %66 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %65, i32 0, i32 2
  %67 = load %struct.socket_info*, %struct.socket_info** %66, align 8
  %68 = call i32 @free(%struct.socket_info* %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %71 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %70, i32 0, i32 1
  %72 = load %struct.socket_info*, %struct.socket_info** %71, align 8
  %73 = icmp ne %struct.socket_info* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %76 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %75, i32 0, i32 1
  %77 = load %struct.socket_info*, %struct.socket_info** %76, align 8
  %78 = call i32 @free(%struct.socket_info* %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %81 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %80, i32 0, i32 0
  %82 = load %struct.socket_info*, %struct.socket_info** %81, align 8
  %83 = icmp ne %struct.socket_info* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %86 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %85, i32 0, i32 0
  %87 = load %struct.socket_info*, %struct.socket_info** %86, align 8
  %88 = call i32 @unlink(%struct.socket_info* %87)
  %89 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %90 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %89, i32 0, i32 0
  %91 = load %struct.socket_info*, %struct.socket_info** %90, align 8
  %92 = call i32 @free(%struct.socket_info* %91)
  br label %93

93:                                               ; preds = %84, %79
  %94 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %95 = call i32 @free(%struct.socket_info* %94)
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %10
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.socket_info* @find_socket_info(i32) #1

declare dso_local i32 @real_close(i32) #1

declare dso_local i32 @SWRAP_DLIST_REMOVE(i32, %struct.socket_info*) #1

declare dso_local i32 @swrap_dump_packet(%struct.socket_info*, i32*, i32, i32*, i32) #1

declare dso_local i32 @free(%struct.socket_info*) #1

declare dso_local i32 @unlink(%struct.socket_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

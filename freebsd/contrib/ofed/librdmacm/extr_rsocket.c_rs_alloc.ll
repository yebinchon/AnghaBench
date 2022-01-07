; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@def_wmem = common dso_local global i32 0, align 4
@def_mem = common dso_local global i32 0, align 4
@def_inline = common dso_local global i32 0, align 4
@def_sqsize = common dso_local global i32 0, align 4
@def_rqsize = common dso_local global i32 0, align 4
@RS_QP_CTRL_SIZE = common dso_local global i32 0, align 4
@def_iomap_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rsocket* (%struct.rsocket*, i32)* @rs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rsocket* @rs_alloc(%struct.rsocket* %0, i32 %1) #0 {
  %3 = alloca %struct.rsocket*, align 8
  %4 = alloca %struct.rsocket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsocket*, align 8
  store %struct.rsocket* %0, %struct.rsocket** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.rsocket* @calloc(i32 1, i32 72)
  store %struct.rsocket* %7, %struct.rsocket** %6, align 8
  %8 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %9 = icmp ne %struct.rsocket* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.rsocket* null, %struct.rsocket** %3, align 8
  br label %119

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %14 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %16 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %15, i32 0, i32 1
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SOCK_DGRAM, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %22 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %21, i32 0, i32 2
  store i32 -1, i32* %22, align 4
  %23 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %24 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %23, i32 0, i32 3
  store i32 -1, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %11
  %26 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %27 = icmp ne %struct.rsocket* %26, null
  br i1 %27, label %28, label %69

28:                                               ; preds = %25
  %29 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %30 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %29, i32 0, i32 17
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %33 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %32, i32 0, i32 17
  store i32 %31, i32* %33, align 4
  %34 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %35 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %34, i32 0, i32 16
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %38 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %37, i32 0, i32 16
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %40 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %39, i32 0, i32 15
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %43 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %42, i32 0, i32 15
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %45 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %48 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %47, i32 0, i32 14
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %50 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %53 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %52, i32 0, i32 13
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SOCK_STREAM, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %28
  %58 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %59 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %62 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %61, i32 0, i32 12
  store i32 %60, i32* %62, align 4
  %63 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %64 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %67 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %57, %28
  br label %96

69:                                               ; preds = %25
  %70 = load i32, i32* @def_wmem, align 4
  %71 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %72 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %71, i32 0, i32 17
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @def_mem, align 4
  %74 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %75 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %74, i32 0, i32 16
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @def_inline, align 4
  %77 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %78 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %77, i32 0, i32 15
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @def_sqsize, align 4
  %80 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %81 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %80, i32 0, i32 14
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @def_rqsize, align 4
  %83 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %84 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %83, i32 0, i32 13
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @SOCK_STREAM, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %69
  %89 = load i32, i32* @RS_QP_CTRL_SIZE, align 4
  %90 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %91 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %90, i32 0, i32 12
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @def_iomap_size, align 4
  %93 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %94 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %93, i32 0, i32 11
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %88, %69
  br label %96

96:                                               ; preds = %95, %68
  %97 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %98 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %97, i32 0, i32 10
  %99 = call i32 @fastlock_init(i32* %98)
  %100 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %101 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %100, i32 0, i32 9
  %102 = call i32 @fastlock_init(i32* %101)
  %103 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %104 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %103, i32 0, i32 8
  %105 = call i32 @fastlock_init(i32* %104)
  %106 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %107 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %106, i32 0, i32 7
  %108 = call i32 @fastlock_init(i32* %107)
  %109 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %110 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %109, i32 0, i32 6
  %111 = call i32 @fastlock_init(i32* %110)
  %112 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %113 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %112, i32 0, i32 5
  %114 = call i32 @dlist_init(i32* %113)
  %115 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %116 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %115, i32 0, i32 4
  %117 = call i32 @dlist_init(i32* %116)
  %118 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  store %struct.rsocket* %118, %struct.rsocket** %3, align 8
  br label %119

119:                                              ; preds = %96, %10
  %120 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  ret %struct.rsocket* %120
}

declare dso_local %struct.rsocket* @calloc(i32, i32) #1

declare dso_local i32 @fastlock_init(i32*) #1

declare dso_local i32 @dlist_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

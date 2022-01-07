; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_riomap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_riomap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rs_iomap_mr = type { i32, i32, i32, i32, i32 }

@IBV_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@idm = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IBV_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @riomap(i32 %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rsocket*, align 8
  %15 = alloca %struct.rs_iomap_mr*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @IBV_ACCESS_LOCAL_WRITE, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.rsocket* @idm_at(i32* @idm, i32 %18)
  store %struct.rsocket* %19, %struct.rsocket** %14, align 8
  %20 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %21 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %6
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @PROT_WRITE, align 4
  %29 = load i32, i32* @PROT_NONE, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26, %6
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @ERR(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %124

37:                                               ; preds = %26
  %38 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %39 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %38, i32 0, i32 1
  %40 = call i32 @fastlock_acquire(i32* %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @PROT_WRITE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %47 = call %struct.rs_iomap_mr* @rs_get_iomap_mr(%struct.rsocket* %46)
  store %struct.rs_iomap_mr* %47, %struct.rs_iomap_mr** %15, align 8
  %48 = load i32, i32* @IBV_ACCESS_REMOTE_WRITE, align 4
  %49 = load i32, i32* %16, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %16, align 4
  br label %55

51:                                               ; preds = %37
  %52 = call %struct.rs_iomap_mr* @calloc(i32 1, i32 20)
  store %struct.rs_iomap_mr* %52, %struct.rs_iomap_mr** %15, align 8
  %53 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %15, align 8
  %54 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %15, align 8
  %57 = icmp ne %struct.rs_iomap_mr* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @ERR(i32 %59)
  store i32 %60, i32* %13, align 4
  br label %119

61:                                               ; preds = %55
  %62 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %63 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @ibv_reg_mr(i32 %66, i8* %67, i64 %68, i32 %69)
  %71 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %15, align 8
  %72 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %15, align 8
  %74 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %61
  %78 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %15, align 8
  %79 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %15, align 8
  %84 = call i32 @free(%struct.rs_iomap_mr* %83)
  br label %85

85:                                               ; preds = %82, %77
  store i32 -1, i32* %13, align 4
  br label %119

86:                                               ; preds = %61
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i8*, i8** %9, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %15, align 8
  %96 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %15, align 8
  %98 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %97, i32 0, i32 3
  %99 = call i32 @atomic_store(i32* %98, i32 1)
  %100 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %15, align 8
  %101 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %93
  %105 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %15, align 8
  %106 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %105, i32 0, i32 2
  %107 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %108 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %107, i32 0, i32 3
  %109 = call i32 @dlist_insert_tail(i32* %106, i32* %108)
  %110 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %111 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %118

112:                                              ; preds = %93
  %113 = load %struct.rs_iomap_mr*, %struct.rs_iomap_mr** %15, align 8
  %114 = getelementptr inbounds %struct.rs_iomap_mr, %struct.rs_iomap_mr* %113, i32 0, i32 2
  %115 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %116 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %115, i32 0, i32 2
  %117 = call i32 @dlist_insert_tail(i32* %114, i32* %116)
  br label %118

118:                                              ; preds = %112, %104
  br label %119

119:                                              ; preds = %118, %85, %58
  %120 = load %struct.rsocket*, %struct.rsocket** %14, align 8
  %121 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %120, i32 0, i32 1
  %122 = call i32 @fastlock_release(i32* %121)
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %119, %34
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local %struct.rsocket* @idm_at(i32*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @fastlock_acquire(i32*) #1

declare dso_local %struct.rs_iomap_mr* @rs_get_iomap_mr(%struct.rsocket*) #1

declare dso_local %struct.rs_iomap_mr* @calloc(i32, i32) #1

declare dso_local i32 @ibv_reg_mr(i32, i8*, i64, i32) #1

declare dso_local i32 @free(%struct.rs_iomap_mr*) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @dlist_insert_tail(i32*, i32*) #1

declare dso_local i32 @fastlock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_ntoh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_ntoh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv = type { i64, %struct.ebuf*, i64 }
%struct.ebuf = type { i32 }

@NV_MAGIC = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nv* @nv_ntoh(%struct.ebuf* %0) #0 {
  %2 = alloca %struct.nv*, align 8
  %3 = alloca %struct.ebuf*, align 8
  %4 = alloca %struct.nv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ebuf* %0, %struct.ebuf** %3, align 8
  %7 = load %struct.ebuf*, %struct.ebuf** %3, align 8
  %8 = icmp ne %struct.ebuf* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @PJDLOG_ASSERT(i32 %9)
  %11 = call %struct.nv* @malloc(i32 24)
  store %struct.nv* %11, %struct.nv** %4, align 8
  %12 = load %struct.nv*, %struct.nv** %4, align 8
  %13 = icmp eq %struct.nv* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.nv* null, %struct.nv** %2, align 8
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.nv*, %struct.nv** %4, align 8
  %17 = getelementptr inbounds %struct.nv, %struct.nv* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.ebuf*, %struct.ebuf** %3, align 8
  %19 = load %struct.nv*, %struct.nv** %4, align 8
  %20 = getelementptr inbounds %struct.nv, %struct.nv* %19, i32 0, i32 1
  store %struct.ebuf* %18, %struct.ebuf** %20, align 8
  %21 = load i64, i64* @NV_MAGIC, align 8
  %22 = load %struct.nv*, %struct.nv** %4, align 8
  %23 = getelementptr inbounds %struct.nv, %struct.nv* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.nv*, %struct.nv** %4, align 8
  %25 = call i32 @nv_validate(%struct.nv* %24, i64* %5)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.nv*, %struct.nv** %4, align 8
  %30 = getelementptr inbounds %struct.nv, %struct.nv* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.nv*, %struct.nv** %4, align 8
  %32 = call i32 @free(%struct.nv* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* @errno, align 4
  store %struct.nv* null, %struct.nv** %2, align 8
  br label %39

34:                                               ; preds = %15
  %35 = load %struct.ebuf*, %struct.ebuf** %3, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @ebuf_del_tail(%struct.ebuf* %35, i64 %36)
  %38 = load %struct.nv*, %struct.nv** %4, align 8
  store %struct.nv* %38, %struct.nv** %2, align 8
  br label %39

39:                                               ; preds = %34, %27, %14
  %40 = load %struct.nv*, %struct.nv** %2, align 8
  ret %struct.nv* %40
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.nv* @malloc(i32) #1

declare dso_local i32 @nv_validate(%struct.nv*, i64*) #1

declare dso_local i32 @free(%struct.nv*) #1

declare dso_local i32 @ebuf_del_tail(%struct.ebuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

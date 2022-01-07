; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_hton.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_hton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebuf = type { i32 }
%struct.nv = type { i64, %struct.ebuf* }
%struct.nvhdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ebuf* @nv_hton(%struct.nv* %0) #0 {
  %2 = alloca %struct.nv*, align 8
  %3 = alloca %struct.nvhdr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.nv* %0, %struct.nv** %2, align 8
  %6 = load %struct.nv*, %struct.nv** %2, align 8
  %7 = call i32 @NV_CHECK(%struct.nv* %6)
  %8 = load %struct.nv*, %struct.nv** %2, align 8
  %9 = getelementptr inbounds %struct.nv, %struct.nv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @PJDLOG_ASSERT(i32 %12)
  %14 = load %struct.nv*, %struct.nv** %2, align 8
  %15 = getelementptr inbounds %struct.nv, %struct.nv* %14, i32 0, i32 1
  %16 = load %struct.ebuf*, %struct.ebuf** %15, align 8
  %17 = call i8* @ebuf_data(%struct.ebuf* %16, i64* %5)
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %21, %1
  %19 = load i64, i64* %5, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = icmp uge i64 %22, 6
  %24 = zext i1 %23 to i32
  %25 = call i32 @PJDLOG_ASSERT(i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = bitcast i8* %26 to %struct.nvhdr*
  store %struct.nvhdr* %27, %struct.nvhdr** %3, align 8
  %28 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %29 = call i64 @NVH_SIZE(%struct.nvhdr* %28)
  %30 = load i64, i64* %5, align 8
  %31 = icmp ule i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @PJDLOG_ASSERT(i32 %32)
  %34 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %35 = call i32 @nv_swap(%struct.nvhdr* %34, i32 0)
  %36 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %37 = call i64 @NVH_SIZE(%struct.nvhdr* %36)
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %4, align 8
  %40 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %41 = call i64 @NVH_SIZE(%struct.nvhdr* %40)
  %42 = load i64, i64* %5, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %5, align 8
  br label %18

44:                                               ; preds = %18
  %45 = load %struct.nv*, %struct.nv** %2, align 8
  %46 = getelementptr inbounds %struct.nv, %struct.nv* %45, i32 0, i32 1
  %47 = load %struct.ebuf*, %struct.ebuf** %46, align 8
  ret %struct.ebuf* %47
}

declare dso_local i32 @NV_CHECK(%struct.nv*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i8* @ebuf_data(%struct.ebuf*, i64*) #1

declare dso_local i64 @NVH_SIZE(%struct.nvhdr*) #1

declare dso_local i32 @nv_swap(%struct.nvhdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

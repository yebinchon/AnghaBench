; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg.c_imsg_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg.c_imsg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibuf = type { i32 }
%struct.imsgbuf = type { i32 }
%struct.imsg_hdr = type { i32, i8*, i64, i8* }

@IMSG_HEADER_SIZE = common dso_local global i64 0, align 8
@MAX_IMSGSIZE = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibuf* @imsg_create(%struct.imsgbuf* %0, i8* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.ibuf*, align 8
  %7 = alloca %struct.imsgbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ibuf*, align 8
  %13 = alloca %struct.imsg_hdr, align 8
  store %struct.imsgbuf* %0, %struct.imsgbuf** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* @IMSG_HEADER_SIZE, align 8
  %15 = load i64, i64* %11, align 8
  %16 = add nsw i64 %15, %14
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @MAX_IMSGSIZE, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @ERANGE, align 4
  store i32 %21, i32* @errno, align 4
  store %struct.ibuf* null, %struct.ibuf** %6, align 8
  br label %49

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds %struct.imsg_hdr, %struct.imsg_hdr* %13, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.imsg_hdr, %struct.imsg_hdr* %13, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds %struct.imsg_hdr, %struct.imsg_hdr* %13, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.imsg_hdr, %struct.imsg_hdr* %13, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.imsgbuf*, %struct.imsgbuf** %7, align 8
  %33 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.imsg_hdr, %struct.imsg_hdr* %13, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  br label %36

36:                                               ; preds = %31, %22
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @MAX_IMSGSIZE, align 8
  %39 = call %struct.ibuf* @ibuf_dynamic(i64 %37, i64 %38)
  store %struct.ibuf* %39, %struct.ibuf** %12, align 8
  %40 = icmp eq %struct.ibuf* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store %struct.ibuf* null, %struct.ibuf** %6, align 8
  br label %49

42:                                               ; preds = %36
  %43 = load %struct.ibuf*, %struct.ibuf** %12, align 8
  %44 = call i32 @imsg_add(%struct.ibuf* %43, %struct.imsg_hdr* %13, i32 32)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store %struct.ibuf* null, %struct.ibuf** %6, align 8
  br label %49

47:                                               ; preds = %42
  %48 = load %struct.ibuf*, %struct.ibuf** %12, align 8
  store %struct.ibuf* %48, %struct.ibuf** %6, align 8
  br label %49

49:                                               ; preds = %47, %46, %41, %20
  %50 = load %struct.ibuf*, %struct.ibuf** %6, align 8
  ret %struct.ibuf* %50
}

declare dso_local %struct.ibuf* @ibuf_dynamic(i64, i64) #1

declare dso_local i32 @imsg_add(%struct.ibuf*, %struct.imsg_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

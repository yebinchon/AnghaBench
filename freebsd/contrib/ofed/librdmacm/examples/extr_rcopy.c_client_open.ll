; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_client_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_client_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_open = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.stat = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"opening...\00", align 1
@src_file = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@fd = common dso_local global i64 0, align 8
@bytes = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@file_addr = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@dst_file = common dso_local global i32 0, align 4
@CMD_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @client_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_open(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg_open*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @fflush(i32* null)
  %10 = load i32, i32* @src_file, align 4
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i64 @open(i32 %10, i32 %11)
  store i64 %12, i64* @fd, align 8
  %13 = load i64, i64* @fd, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* @fd, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %108

18:                                               ; preds = %1
  %19 = load i64, i64* @fd, align 8
  %20 = call i32 @fstat(i64 %19, %struct.stat* %5)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %104

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* @bytes, align 8
  %27 = load i64, i64* @bytes, align 8
  %28 = load i32, i32* @PROT_READ, align 4
  %29 = load i32, i32* @MAP_SHARED, align 4
  %30 = load i64, i64* @fd, align 8
  %31 = call i8* @mmap(i32* null, i64 %27, i32 %28, i32 %29, i64 %30, i32 0)
  store i8* %31, i8** @file_addr, align 8
  %32 = load i8*, i8** @file_addr, align 8
  %33 = icmp eq i8* %32, inttoptr (i64 -1 to i8*)
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %7, align 4
  br label %104

36:                                               ; preds = %24
  %37 = load i32, i32* @dst_file, align 4
  %38 = call i64 @strlen(i32 %37)
  %39 = trunc i64 %38 to i32
  %40 = add nsw i32 %39, 8
  %41 = and i32 %40, -8
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 16, %43
  %45 = trunc i64 %44 to i32
  %46 = call %struct.msg_open* @calloc(i32 1, i32 %45)
  store %struct.msg_open* %46, %struct.msg_open** %4, align 8
  %47 = load %struct.msg_open*, %struct.msg_open** %4, align 8
  %48 = icmp ne %struct.msg_open* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  store i32 -1, i32* %7, align 4
  br label %100

50:                                               ; preds = %36
  %51 = load i32, i32* @CMD_OPEN, align 4
  %52 = load %struct.msg_open*, %struct.msg_open** %4, align 8
  %53 = getelementptr inbounds %struct.msg_open, %struct.msg_open* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 16, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct.msg_open*, %struct.msg_open** %4, align 8
  %60 = getelementptr inbounds %struct.msg_open, %struct.msg_open* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.msg_open*, %struct.msg_open** %4, align 8
  %66 = getelementptr inbounds %struct.msg_open, %struct.msg_open* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.msg_open*, %struct.msg_open** %4, align 8
  %69 = getelementptr inbounds %struct.msg_open, %struct.msg_open* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @dst_file, align 4
  %72 = call i32 @strcpy(i32 %70, i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.msg_open*, %struct.msg_open** %4, align 8
  %75 = load %struct.msg_open*, %struct.msg_open** %4, align 8
  %76 = getelementptr inbounds %struct.msg_open, %struct.msg_open* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rsend(i32 %73, %struct.msg_open* %74, i32 %78, i32 0)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.msg_open*, %struct.msg_open** %4, align 8
  %82 = getelementptr inbounds %struct.msg_open, %struct.msg_open* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %50
  br label %97

87:                                               ; preds = %50
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.msg_open*, %struct.msg_open** %4, align 8
  %90 = getelementptr inbounds %struct.msg_open, %struct.msg_open* %89, i32 0, i32 0
  %91 = load i32, i32* @CMD_OPEN, align 4
  %92 = call i32 @msg_get_resp(i32 %88, %struct.TYPE_2__* %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %97

96:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %108

97:                                               ; preds = %95, %86
  %98 = load %struct.msg_open*, %struct.msg_open** %4, align 8
  %99 = call i32 @free(%struct.msg_open* %98)
  br label %100

100:                                              ; preds = %97, %49
  %101 = load i8*, i8** @file_addr, align 8
  %102 = load i64, i64* @bytes, align 8
  %103 = call i32 @munmap(i8* %101, i64 %102)
  br label %104

104:                                              ; preds = %100, %34, %23
  %105 = load i64, i64* @fd, align 8
  %106 = call i32 @close(i64 %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %104, %96, %15
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @open(i32, i32) #1

declare dso_local i32 @fstat(i64, %struct.stat*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i64, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local %struct.msg_open* @calloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @rsend(i32, %struct.msg_open*, i32, i32) #1

declare dso_local i32 @msg_get_resp(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @free(%struct.msg_open*) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_init_fd_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-fileio.c_remote_fileio_init_fd_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@remote_fio_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FIO_FD_CONSOLE_IN = common dso_local global i32 0, align 4
@FIO_FD_CONSOLE_OUT = common dso_local global i8* null, align 8
@FIO_FD_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @remote_fileio_init_fd_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_fileio_init_fd_map() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_fio_data, i32 0, i32 0), align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %0
  %5 = call i64 @xmalloc(i32 40)
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_fio_data, i32 0, i32 0), align 8
  store i32 10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_fio_data, i32 0, i32 1), align 8
  %7 = load i32, i32* @FIO_FD_CONSOLE_IN, align 4
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_fio_data, i32 0, i32 0), align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %7, i32* %9, align 4
  %10 = load i8*, i8** @FIO_FD_CONSOLE_OUT, align 8
  %11 = ptrtoint i8* %10 to i32
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_fio_data, i32 0, i32 0), align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %11, i32* %13, align 4
  %14 = load i8*, i8** @FIO_FD_CONSOLE_OUT, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_fio_data, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  store i32 %15, i32* %17, align 4
  store i32 3, i32* %1, align 4
  br label %18

18:                                               ; preds = %27, %4
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* @FIO_FD_INVALID, align 4
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_fio_data, i32 0, i32 0), align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %18

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %0
  ret i32 3
}

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

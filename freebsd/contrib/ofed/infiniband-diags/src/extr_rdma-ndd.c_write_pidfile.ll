; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_rdma-ndd.c_write_pidfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_rdma-ndd.c_write_pidfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pidfile = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to write pidfile : %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_pidfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_pidfile() #0 {
  %1 = alloca i32*, align 8
  %2 = load i64, i64* @pidfile, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = call i32 (...) @remove_pidfile()
  %6 = load i64, i64* @pidfile, align 8
  %7 = call i32* @fopen(i64 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 (...) @getpid()
  %13 = call i32 @fprintf(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @fclose(i32* %14)
  br label %22

16:                                               ; preds = %4
  %17 = load i32, i32* @LOG_ERR, align 4
  %18 = load i64, i64* @pidfile, align 8
  %19 = call i32 @syslog(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @exit(i32 %20) #3
  unreachable

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22, %0
  ret void
}

declare dso_local i32 @remove_pidfile(...) #1

declare dso_local i32* @fopen(i64, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @syslog(i32, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

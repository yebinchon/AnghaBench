; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_client.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_client.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"s:p:\00", align 1
@optarg = common dso_local global i8* null, align 8
@server = common dso_local global i8* null, align 8
@port = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"usage: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"\09[-s server_address]\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\09[-p port_number]\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"rdma_client: start\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"rdma_client: end %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %19 [
    i32 115, label %15
    i32 112, label %17
  ]

15:                                               ; preds = %13
  %16 = load i8*, i8** @optarg, align 8
  store i8* %16, i8** @server, align 8
  br label %27

17:                                               ; preds = %13
  %18 = load i8*, i8** @optarg, align 8
  store i8* %18, i8** @port, align 8
  br label %27

19:                                               ; preds = %13
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %17, %15
  br label %8

28:                                               ; preds = %8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %30 = call i32 (...) @run()
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_check_binary_download.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_check_binary_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.remote_state = type { i32 }

@remote_protocol_binary_download = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@remote_debug = common dso_local global i32 0, align 4
@gdb_stdlog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"binary downloading NOT suppported by target\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"binary downloading suppported by target\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check_binary_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_binary_download(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.remote_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %6, %struct.remote_state** %3, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_protocol_binary_download, i32 0, i32 0), align 4
  switch i32 %7, label %67 [
    i32 130, label %8
    i32 129, label %9
    i32 128, label %10
  ]

8:                                                ; preds = %1
  br label %67

9:                                                ; preds = %1
  br label %67

10:                                               ; preds = %1
  %11 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %12 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @alloca(i32 %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  store i8 88, i8* %16, align 1
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @hexnumstr(i8* %18, i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  store i8 44, i8* %24, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @hexnumstr(i8* %26, i32 0)
  %28 = load i8*, i8** %5, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  store i8 58, i8* %31, align 1
  %33 = load i8*, i8** %5, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @putpkt_binary(i8* %34, i32 %40)
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.remote_state*, %struct.remote_state** %3, align 8
  %44 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @getpkt(i8* %42, i32 %45, i32 0)
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %10
  %53 = load i32, i32* @remote_debug, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @gdb_stdlog, align 4
  %57 = call i32 @fprintf_unfiltered(i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %52
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_protocol_binary_download, i32 0, i32 0), align 4
  br label %66

59:                                               ; preds = %10
  %60 = load i32, i32* @remote_debug, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @gdb_stdlog, align 4
  %64 = call i32 @fprintf_unfiltered(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %59
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remote_protocol_binary_download, i32 0, i32 0), align 4
  br label %66

66:                                               ; preds = %65, %58
  br label %67

67:                                               ; preds = %1, %66, %9, %8
  ret void
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @hexnumstr(i8*, i32) #1

declare dso_local i32 @putpkt_binary(i8*, i32) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

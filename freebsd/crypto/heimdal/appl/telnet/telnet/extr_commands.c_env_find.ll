; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.env_lst* }
%struct.env_lst = type { i64, %struct.env_lst* }

@envlisthead = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.env_lst* @env_find(i8* %0) #0 {
  %2 = alloca %struct.env_lst*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.env_lst*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.env_lst*, %struct.env_lst** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @envlisthead, i32 0, i32 0), align 8
  store %struct.env_lst* %5, %struct.env_lst** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.env_lst*, %struct.env_lst** %4, align 8
  %8 = icmp ne %struct.env_lst* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load %struct.env_lst*, %struct.env_lst** %4, align 8
  %11 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @strcmp(i8* %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load %struct.env_lst*, %struct.env_lst** %4, align 8
  store %struct.env_lst* %18, %struct.env_lst** %2, align 8
  br label %25

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.env_lst*, %struct.env_lst** %4, align 8
  %22 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %21, i32 0, i32 1
  %23 = load %struct.env_lst*, %struct.env_lst** %22, align 8
  store %struct.env_lst* %23, %struct.env_lst** %4, align 8
  br label %6

24:                                               ; preds = %6
  store %struct.env_lst* null, %struct.env_lst** %2, align 8
  br label %25

25:                                               ; preds = %24, %17
  %26 = load %struct.env_lst*, %struct.env_lst** %2, align 8
  ret %struct.env_lst* %26
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

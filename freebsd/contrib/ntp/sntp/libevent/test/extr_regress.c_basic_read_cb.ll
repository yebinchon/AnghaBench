; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.c_basic_read_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.c_basic_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_cb_args = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"read (callback)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"EOF before data read\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"not all data read on first cycle\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"too many cycles\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @basic_read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @basic_read_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.basic_cb_args*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.basic_cb_args*
  store %struct.basic_cb_args* %11, %struct.basic_cb_args** %9, align 8
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %14 = call i32 @read(i32 %12, i8* %13, i32 256)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @tt_fail_perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.basic_cb_args*, %struct.basic_cb_args** %9, align 8
  %21 = getelementptr inbounds %struct.basic_cb_args, %struct.basic_cb_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  switch i32 %22, label %36 [
    i32 0, label %24
    i32 1, label %30
  ]

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %48

28:                                               ; preds = %24
  %29 = call i32 @tt_fail_msg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %38

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @tt_fail_msg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  br label %38

36:                                               ; preds = %19
  %37 = call i32 @tt_fail_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %35, %28
  br label %39

39:                                               ; preds = %38, %17
  %40 = load %struct.basic_cb_args*, %struct.basic_cb_args** %9, align 8
  %41 = getelementptr inbounds %struct.basic_cb_args, %struct.basic_cb_args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @event_del(i32 %42)
  %44 = load %struct.basic_cb_args*, %struct.basic_cb_args** %9, align 8
  %45 = getelementptr inbounds %struct.basic_cb_args, %struct.basic_cb_args* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @event_base_loopexit(i32 %46, i32* null)
  br label %48

48:                                               ; preds = %39, %27
  ret void
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @tt_fail_perror(i8*) #1

declare dso_local i32 @tt_fail_msg(i8*) #1

declare dso_local i32 @event_del(i32) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

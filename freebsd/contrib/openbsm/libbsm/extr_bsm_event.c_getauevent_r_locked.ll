; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_event.c_getauevent_r_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_event.c_getauevent_r_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_event_ent = type { i32 }

@fp = common dso_local global i32* null, align 8
@AUDIT_EVENT_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@linestr = common dso_local global i8* null, align 8
@AU_LINE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.au_event_ent* (%struct.au_event_ent*)* @getauevent_r_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.au_event_ent* @getauevent_r_locked(%struct.au_event_ent* %0) #0 {
  %2 = alloca %struct.au_event_ent*, align 8
  %3 = alloca %struct.au_event_ent*, align 8
  %4 = alloca i8*, align 8
  store %struct.au_event_ent* %0, %struct.au_event_ent** %3, align 8
  %5 = load i32*, i32** @fp, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @AUDIT_EVENT_FILE, align 4
  %9 = call i32* @fopen(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** @fp, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store %struct.au_event_ent* null, %struct.au_event_ent** %2, align 8
  br label %42

12:                                               ; preds = %7, %1
  br label %13

13:                                               ; preds = %12, %32
  %14 = load i8*, i8** @linestr, align 8
  %15 = load i32, i32* @AU_LINE_MAX, align 4
  %16 = load i32*, i32** @fp, align 8
  %17 = call i32* @fgets(i8* %14, i32 %15, i32* %16)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store %struct.au_event_ent* null, %struct.au_event_ent** %2, align 8
  br label %42

20:                                               ; preds = %13
  %21 = load i8*, i8** @linestr, align 8
  %22 = call i8* @strrchr(i8* %21, i8 signext 10)
  store i8* %22, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i8*, i8** @linestr, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 35
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %13

33:                                               ; preds = %26
  %34 = load i8*, i8** @linestr, align 8
  %35 = load %struct.au_event_ent*, %struct.au_event_ent** %3, align 8
  %36 = call i32* @eventfromstr(i8* %34, %struct.au_event_ent* %35)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store %struct.au_event_ent* null, %struct.au_event_ent** %2, align 8
  br label %42

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.au_event_ent*, %struct.au_event_ent** %3, align 8
  store %struct.au_event_ent* %41, %struct.au_event_ent** %2, align 8
  br label %42

42:                                               ; preds = %40, %38, %19, %11
  %43 = load %struct.au_event_ent*, %struct.au_event_ent** %2, align 8
  ret %struct.au_event_ent* %43
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @eventfromstr(i8*, %struct.au_event_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

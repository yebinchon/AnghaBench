; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_event.c_getauevnam_r_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_event.c_getauevnam_r_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_event_ent = type { i32 }

@fp = common dso_local global i32* null, align 8
@AUDIT_EVENT_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@linestr = common dso_local global i32 0, align 4
@AU_LINE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.au_event_ent* (%struct.au_event_ent*, i8*)* @getauevnam_r_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.au_event_ent* @getauevnam_r_locked(%struct.au_event_ent* %0, i8* %1) #0 {
  %3 = alloca %struct.au_event_ent*, align 8
  %4 = alloca %struct.au_event_ent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.au_event_ent* %0, %struct.au_event_ent** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.au_event_ent* null, %struct.au_event_ent** %3, align 8
  br label %49

10:                                               ; preds = %2
  %11 = call i32 (...) @setauevent_locked()
  %12 = load i32*, i32** @fp, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* @AUDIT_EVENT_FILE, align 4
  %16 = call i32* @fopen(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** @fp, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.au_event_ent* null, %struct.au_event_ent** %3, align 8
  br label %49

19:                                               ; preds = %14, %10
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, i32* @linestr, align 4
  %22 = load i32, i32* @AU_LINE_MAX, align 4
  %23 = load i32*, i32** @fp, align 8
  %24 = call i32* @fgets(i32 %21, i32 %22, i32* %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %20
  %27 = load i32, i32* @linestr, align 4
  %28 = call i8* @strrchr(i32 %27, i8 signext 10)
  store i8* %28, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* @linestr, align 4
  %34 = load %struct.au_event_ent*, %struct.au_event_ent** %4, align 8
  %35 = call i32* @eventfromstr(i32 %33, %struct.au_event_ent* %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.au_event_ent*, %struct.au_event_ent** %4, align 8
  %40 = getelementptr inbounds %struct.au_event_ent, %struct.au_event_ent* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @strcmp(i8* %38, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load %struct.au_event_ent*, %struct.au_event_ent** %4, align 8
  store %struct.au_event_ent* %45, %struct.au_event_ent** %3, align 8
  br label %49

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %32
  br label %20

48:                                               ; preds = %20
  store %struct.au_event_ent* null, %struct.au_event_ent** %3, align 8
  br label %49

49:                                               ; preds = %48, %44, %18, %9
  %50 = load %struct.au_event_ent*, %struct.au_event_ent** %3, align 8
  ret %struct.au_event_ent* %50
}

declare dso_local i32 @setauevent_locked(...) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32* @fgets(i32, i32, i32*) #1

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i32* @eventfromstr(i32, %struct.au_event_ent*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

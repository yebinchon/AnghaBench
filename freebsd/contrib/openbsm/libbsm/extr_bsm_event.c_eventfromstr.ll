; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_event.c_eventfromstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_event.c_eventfromstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_event_ent = type { i32, i32, i32, i32 }
%struct.au_mask = type { i32 }

@eventdelim = common dso_local global i32 0, align 4
@AU_EVENT_NAME_MAX = common dso_local global i64 0, align 8
@AU_EVENT_DESC_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.au_event_ent* (i8*, %struct.au_event_ent*)* @eventfromstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.au_event_ent* @eventfromstr(i8* %0, %struct.au_event_ent* %1) #0 {
  %3 = alloca %struct.au_event_ent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.au_event_ent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.au_mask, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.au_event_ent* %1, %struct.au_event_ent** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @eventdelim, align 4
  %14 = call i8* @strtok_r(i8* %12, i32 %13, i8** %11)
  store i8* %14, i8** %6, align 8
  %15 = load i32, i32* @eventdelim, align 4
  %16 = call i8* @strtok_r(i8* null, i32 %15, i8** %11)
  store i8* %16, i8** %7, align 8
  %17 = load i32, i32* @eventdelim, align 4
  %18 = call i8* @strtok_r(i8* null, i32 %17, i8** %11)
  store i8* %18, i8** %8, align 8
  %19 = load i32, i32* @eventdelim, align 4
  %20 = call i8* @strtok_r(i8* null, i32 %19, i8** %11)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i8*, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %2
  store %struct.au_event_ent* null, %struct.au_event_ent** %3, align 8
  br label %86

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = load i64, i64* @AU_EVENT_NAME_MAX, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store %struct.au_event_ent* null, %struct.au_event_ent** %3, align 8
  br label %86

33:                                               ; preds = %27
  %34 = load %struct.au_event_ent*, %struct.au_event_ent** %5, align 8
  %35 = getelementptr inbounds %struct.au_event_ent, %struct.au_event_ent* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* @AU_EVENT_NAME_MAX, align 8
  %39 = call i32 @strlcpy(i32 %36, i8* %37, i64 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %33
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = load i64, i64* @AU_EVENT_DESC_MAX, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store %struct.au_event_ent* null, %struct.au_event_ent** %3, align 8
  br label %86

48:                                               ; preds = %42
  %49 = load %struct.au_event_ent*, %struct.au_event_ent** %5, align 8
  %50 = getelementptr inbounds %struct.au_event_ent, %struct.au_event_ent* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* @AU_EVENT_DESC_MAX, align 8
  %54 = call i32 @strlcpy(i32 %51, i8* %52, i64 %53)
  br label %61

55:                                               ; preds = %33
  %56 = load %struct.au_event_ent*, %struct.au_event_ent** %5, align 8
  %57 = getelementptr inbounds %struct.au_event_ent, %struct.au_event_ent* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @AU_EVENT_DESC_MAX, align 8
  %60 = call i32 @strlcpy(i32 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %55, %48
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @atoi(i8* %62)
  %64 = load %struct.au_event_ent*, %struct.au_event_ent** %5, align 8
  %65 = getelementptr inbounds %struct.au_event_ent, %struct.au_event_ent* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load i8*, i8** %9, align 8
  %70 = call i64 @getauditflagsbin(i8* %69, %struct.au_mask* %10)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.au_event_ent*, %struct.au_event_ent** %5, align 8
  %74 = getelementptr inbounds %struct.au_event_ent, %struct.au_event_ent* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  br label %80

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.au_mask, %struct.au_mask* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.au_event_ent*, %struct.au_event_ent** %5, align 8
  %79 = getelementptr inbounds %struct.au_event_ent, %struct.au_event_ent* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %72
  br label %84

81:                                               ; preds = %61
  %82 = load %struct.au_event_ent*, %struct.au_event_ent** %5, align 8
  %83 = getelementptr inbounds %struct.au_event_ent, %struct.au_event_ent* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %80
  %85 = load %struct.au_event_ent*, %struct.au_event_ent** %5, align 8
  store %struct.au_event_ent* %85, %struct.au_event_ent** %3, align 8
  br label %86

86:                                               ; preds = %84, %47, %32, %26
  %87 = load %struct.au_event_ent*, %struct.au_event_ent** %3, align 8
  ret %struct.au_event_ent* %87
}

declare dso_local i8* @strtok_r(i8*, i32, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i64) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @getauditflagsbin(i8*, %struct.au_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_nameentry_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_nameentry_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagename = type { i32, i32, i32* }

@EX_OSERR = common dso_local global i32 0, align 4
@namelist = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @nameentry_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nameentry_create(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pagename*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %13, %10, %3
  br label %49

23:                                               ; preds = %16
  %24 = call %struct.pagename* @malloc(i32 16)
  store %struct.pagename* %24, %struct.pagename** %7, align 8
  %25 = icmp eq %struct.pagename* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = call i32* @strdup(i8* %27)
  %29 = load %struct.pagename*, %struct.pagename** %7, align 8
  %30 = getelementptr inbounds %struct.pagename, %struct.pagename* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = icmp eq i32* %28, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %23
  %33 = load i32, i32* @EX_OSERR, align 4
  %34 = call i32 @err(i32 %33, i32* null)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.pagename*, %struct.pagename** %7, align 8
  %37 = getelementptr inbounds %struct.pagename, %struct.pagename* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @RTRIM(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.pagename*, %struct.pagename** %7, align 8
  %42 = getelementptr inbounds %struct.pagename, %struct.pagename* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.pagename*, %struct.pagename** %7, align 8
  %45 = getelementptr inbounds %struct.pagename, %struct.pagename* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pagename*, %struct.pagename** %7, align 8
  %47 = load i32, i32* @link, align 4
  %48 = call i32 @SLIST_INSERT_HEAD(i32* @namelist, %struct.pagename* %46, i32 %47)
  br label %49

49:                                               ; preds = %35, %22
  ret void
}

declare dso_local %struct.pagename* @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @RTRIM(i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.pagename*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

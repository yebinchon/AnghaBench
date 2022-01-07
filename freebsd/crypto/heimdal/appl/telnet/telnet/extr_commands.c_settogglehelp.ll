; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_settogglehelp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_settogglehelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.togglelist = type { i8*, i8* }

@Togglelist = common dso_local global %struct.togglelist* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"%-15s %s %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @settogglehelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @settogglehelp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.togglelist*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.togglelist*, %struct.togglelist** @Togglelist, align 8
  store %struct.togglelist* %4, %struct.togglelist** %3, align 8
  br label %5

5:                                                ; preds = %37, %1
  %6 = load %struct.togglelist*, %struct.togglelist** %3, align 8
  %7 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %40

10:                                               ; preds = %5
  %11 = load %struct.togglelist*, %struct.togglelist** %3, align 8
  %12 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load %struct.togglelist*, %struct.togglelist** %3, align 8
  %17 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.togglelist*, %struct.togglelist** %3, align 8
  %23 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %29 = load %struct.togglelist*, %struct.togglelist** %3, align 8
  %30 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %28, i8* %31)
  br label %35

33:                                               ; preds = %15
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %21
  br label %36

36:                                               ; preds = %35, %10
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.togglelist*, %struct.togglelist** %3, align 8
  %39 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %38, i32 1
  store %struct.togglelist* %39, %struct.togglelist** %3, align 8
  br label %5

40:                                               ; preds = %5
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

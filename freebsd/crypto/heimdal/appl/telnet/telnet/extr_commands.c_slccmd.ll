; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_slccmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_slccmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slclist = type { i32, i32 (i32)* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Need an argument to 'slc' command.  'slc ?' for help.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"'%s': unknown argument ('slc ?' for help).\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"'%s': ambiguous argument ('slc ?' for help).\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @slccmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slccmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.slclist*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %44

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call %struct.slclist* @getslc(i8* %15)
  store %struct.slclist* %16, %struct.slclist** %6, align 8
  %17 = load %struct.slclist*, %struct.slclist** %6, align 8
  %18 = icmp eq %struct.slclist* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 0, i32* %3, align 4
  br label %44

25:                                               ; preds = %12
  %26 = load %struct.slclist*, %struct.slclist** %6, align 8
  %27 = call i64 @Ambiguous(%struct.slclist* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  store i32 0, i32* %3, align 4
  br label %44

35:                                               ; preds = %25
  %36 = load %struct.slclist*, %struct.slclist** %6, align 8
  %37 = getelementptr inbounds %struct.slclist, %struct.slclist* %36, i32 0, i32 1
  %38 = load i32 (i32)*, i32 (i32)** %37, align 8
  %39 = load %struct.slclist*, %struct.slclist** %6, align 8
  %40 = getelementptr inbounds %struct.slclist, %struct.slclist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %38(i32 %41)
  %43 = call i32 (...) @slcstate()
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %29, %19, %9
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.slclist* @getslc(i8*) #1

declare dso_local i64 @Ambiguous(%struct.slclist*) #1

declare dso_local i32 @slcstate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

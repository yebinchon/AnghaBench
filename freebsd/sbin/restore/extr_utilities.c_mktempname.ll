; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_mktempname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_utilities.c_mktempname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@TMPNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mktempname: called with TMPNAME\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mktempname(%struct.entry* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.entry* %0, %struct.entry** %2, align 8
  %5 = load i32, i32* @MAXPATHLEN, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load %struct.entry*, %struct.entry** %2, align 8
  %10 = getelementptr inbounds %struct.entry, %struct.entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TMPNAME, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.entry*, %struct.entry** %2, align 8
  %17 = call i32 @badentry(%struct.entry* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* @TMPNAME, align 4
  %20 = load %struct.entry*, %struct.entry** %2, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.entry*, %struct.entry** %2, align 8
  %25 = call i32 @myname(%struct.entry* %24)
  %26 = call i32 @strcpy(i8* %8, i32 %25)
  %27 = load %struct.entry*, %struct.entry** %2, align 8
  %28 = getelementptr inbounds %struct.entry, %struct.entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @freename(i32 %29)
  %31 = load %struct.entry*, %struct.entry** %2, align 8
  %32 = call i32 @gentempname(%struct.entry* %31)
  %33 = call i32 @savename(i32 %32)
  %34 = load %struct.entry*, %struct.entry** %2, align 8
  %35 = getelementptr inbounds %struct.entry, %struct.entry* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.entry*, %struct.entry** %2, align 8
  %37 = getelementptr inbounds %struct.entry, %struct.entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strlen(i32 %38)
  %40 = load %struct.entry*, %struct.entry** %2, align 8
  %41 = getelementptr inbounds %struct.entry, %struct.entry* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.entry*, %struct.entry** %2, align 8
  %43 = call i32 @myname(%struct.entry* %42)
  %44 = call i32 @renameit(i8* %8, i32 %43)
  %45 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %45)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @badentry(%struct.entry*, i8*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @myname(%struct.entry*) #2

declare dso_local i32 @freename(i32) #2

declare dso_local i32 @savename(i32) #2

declare dso_local i32 @gentempname(%struct.entry*) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @renameit(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

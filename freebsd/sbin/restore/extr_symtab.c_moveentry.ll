; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_moveentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_moveentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i32, i32, %struct.entry*, %struct.entry*, %struct.entry* }

@.str = private unnamed_addr constant [17 x i8] c"cannot move ROOT\00", align 1
@TMPNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moveentry(%struct.entry* %0, i8* %1) #0 {
  %3 = alloca %struct.entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.entry*, align 8
  %6 = alloca i8*, align 8
  store %struct.entry* %0, %struct.entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.entry* @lookupparent(i8* %7)
  store %struct.entry* %8, %struct.entry** %5, align 8
  %9 = load %struct.entry*, %struct.entry** %5, align 8
  %10 = icmp eq %struct.entry* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.entry*, %struct.entry** %3, align 8
  %13 = call i32 @badentry(%struct.entry* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.entry*, %struct.entry** %5, align 8
  %16 = load %struct.entry*, %struct.entry** %3, align 8
  %17 = getelementptr inbounds %struct.entry, %struct.entry* %16, i32 0, i32 5
  %18 = load %struct.entry*, %struct.entry** %17, align 8
  %19 = icmp ne %struct.entry* %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.entry*, %struct.entry** %3, align 8
  %22 = call i32 @removeentry(%struct.entry* %21)
  %23 = load %struct.entry*, %struct.entry** %5, align 8
  %24 = load %struct.entry*, %struct.entry** %3, align 8
  %25 = getelementptr inbounds %struct.entry, %struct.entry* %24, i32 0, i32 5
  store %struct.entry* %23, %struct.entry** %25, align 8
  %26 = load %struct.entry*, %struct.entry** %5, align 8
  %27 = getelementptr inbounds %struct.entry, %struct.entry* %26, i32 0, i32 3
  %28 = load %struct.entry*, %struct.entry** %27, align 8
  %29 = load %struct.entry*, %struct.entry** %3, align 8
  %30 = getelementptr inbounds %struct.entry, %struct.entry* %29, i32 0, i32 4
  store %struct.entry* %28, %struct.entry** %30, align 8
  %31 = load %struct.entry*, %struct.entry** %3, align 8
  %32 = load %struct.entry*, %struct.entry** %5, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 3
  store %struct.entry* %31, %struct.entry** %33, align 8
  br label %34

34:                                               ; preds = %20, %14
  %35 = load i8*, i8** %4, align 8
  %36 = call i8* @strrchr(i8* %35, i8 signext 47)
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %6, align 8
  %38 = load %struct.entry*, %struct.entry** %3, align 8
  %39 = getelementptr inbounds %struct.entry, %struct.entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @freename(i32 %40)
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @savename(i8* %42)
  %44 = load %struct.entry*, %struct.entry** %3, align 8
  %45 = getelementptr inbounds %struct.entry, %struct.entry* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = load %struct.entry*, %struct.entry** %3, align 8
  %49 = getelementptr inbounds %struct.entry, %struct.entry* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.entry*, %struct.entry** %3, align 8
  %51 = call i32 @gentempname(%struct.entry* %50)
  %52 = load %struct.entry*, %struct.entry** %3, align 8
  %53 = getelementptr inbounds %struct.entry, %struct.entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @strcmp(i32 %51, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %34
  %58 = load i32, i32* @TMPNAME, align 4
  %59 = load %struct.entry*, %struct.entry** %3, align 8
  %60 = getelementptr inbounds %struct.entry, %struct.entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %70

63:                                               ; preds = %34
  %64 = load i32, i32* @TMPNAME, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.entry*, %struct.entry** %3, align 8
  %67 = getelementptr inbounds %struct.entry, %struct.entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %63, %57
  ret void
}

declare dso_local %struct.entry* @lookupparent(i8*) #1

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

declare dso_local i32 @removeentry(%struct.entry*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @freename(i32) #1

declare dso_local i32 @savename(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @gentempname(%struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

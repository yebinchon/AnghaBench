; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_lookupparent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_lookupparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i64 }

@NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"%s is not a directory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.entry* (i8*)* @lookupparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.entry* @lookupparent(i8* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.entry*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @strrchr(i8* %6, i8 signext 47)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.entry* null, %struct.entry** %2, align 8
  br label %30

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.entry* @lookupname(i8* %13)
  store %struct.entry* %14, %struct.entry** %4, align 8
  %15 = load i8*, i8** %5, align 8
  store i8 47, i8* %15, align 1
  %16 = load %struct.entry*, %struct.entry** %4, align 8
  %17 = icmp eq %struct.entry* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store %struct.entry* null, %struct.entry** %2, align 8
  br label %30

19:                                               ; preds = %11
  %20 = load %struct.entry*, %struct.entry** %4, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NODE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.entry*, %struct.entry** %4, align 8
  store %struct.entry* %29, %struct.entry** %2, align 8
  br label %30

30:                                               ; preds = %28, %18, %10
  %31 = load %struct.entry*, %struct.entry** %2, align 8
  ret %struct.entry* %31
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.entry* @lookupname(i8*) #1

declare dso_local i32 @panic(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

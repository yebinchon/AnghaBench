; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_filegen.c_filegen_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_filegen.c_filegen_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filegen_entry = type { i8*, i32*, %struct.filegen_entry* }

@.str = private unnamed_addr constant [26 x i8] c"filegen_register(%s, %p)\0A\00", align 1
@filegen_registry = common dso_local global %struct.filegen_entry* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"replacing filegen %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"adding new filegen\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filegen_register(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.filegen_entry**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = call i32 @DPRINTF(i32 4, i8* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @filegen_init(i8* %12, i8* %13, i32* %14)
  store %struct.filegen_entry** @filegen_registry, %struct.filegen_entry*** %7, align 8
  br label %16

16:                                               ; preds = %46, %3
  %17 = load %struct.filegen_entry**, %struct.filegen_entry*** %7, align 8
  %18 = load %struct.filegen_entry*, %struct.filegen_entry** %17, align 8
  %19 = icmp ne %struct.filegen_entry* null, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %16
  %21 = load %struct.filegen_entry**, %struct.filegen_entry*** %7, align 8
  %22 = load %struct.filegen_entry*, %struct.filegen_entry** %21, align 8
  %23 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = load %struct.filegen_entry**, %struct.filegen_entry*** %7, align 8
  %29 = load %struct.filegen_entry*, %struct.filegen_entry** %28, align 8
  %30 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strcmp(i8* %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %27, %20
  %36 = load %struct.filegen_entry**, %struct.filegen_entry*** %7, align 8
  %37 = load %struct.filegen_entry*, %struct.filegen_entry** %36, align 8
  %38 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = call i32 @DPRINTF(i32 5, i8* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.filegen_entry**, %struct.filegen_entry*** %7, align 8
  %44 = load %struct.filegen_entry*, %struct.filegen_entry** %43, align 8
  %45 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %44, i32 0, i32 1
  store i32* %42, i32** %45, align 8
  br label %66

46:                                               ; preds = %27
  %47 = load %struct.filegen_entry**, %struct.filegen_entry*** %7, align 8
  %48 = load %struct.filegen_entry*, %struct.filegen_entry** %47, align 8
  %49 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %48, i32 0, i32 2
  store %struct.filegen_entry** %49, %struct.filegen_entry*** %7, align 8
  br label %16

50:                                               ; preds = %16
  %51 = call %struct.filegen_entry* @emalloc(i32 24)
  %52 = load %struct.filegen_entry**, %struct.filegen_entry*** %7, align 8
  store %struct.filegen_entry* %51, %struct.filegen_entry** %52, align 8
  %53 = load %struct.filegen_entry**, %struct.filegen_entry*** %7, align 8
  %54 = load %struct.filegen_entry*, %struct.filegen_entry** %53, align 8
  %55 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %54, i32 0, i32 2
  store %struct.filegen_entry* null, %struct.filegen_entry** %55, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i8* @estrdup(i8* %56)
  %58 = load %struct.filegen_entry**, %struct.filegen_entry*** %7, align 8
  %59 = load %struct.filegen_entry*, %struct.filegen_entry** %58, align 8
  %60 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.filegen_entry**, %struct.filegen_entry*** %7, align 8
  %63 = load %struct.filegen_entry*, %struct.filegen_entry** %62, align 8
  %64 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %63, i32 0, i32 1
  store i32* %61, i32** %64, align 8
  %65 = call i32 @DPRINTF(i32 6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %50, %35
  ret void
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @filegen_init(i8*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.filegen_entry* @emalloc(i32) #1

declare dso_local i8* @estrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

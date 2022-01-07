; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_cmd_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_command.c_db_cmd_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i8* }

@CMD_UNIQUE = common dso_local global i32 0, align 4
@CMD_FOUND = common dso_local global i32 0, align 4
@CMD_AMBIGUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.command*, %struct.command**, i32*)* @db_cmd_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_cmd_match(i8* %0, %struct.command* %1, %struct.command** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.command*, align 8
  %7 = alloca %struct.command**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.command* %1, %struct.command** %6, align 8
  store %struct.command** %2, %struct.command*** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %9, align 8
  %13 = load %struct.command*, %struct.command** %6, align 8
  %14 = getelementptr inbounds %struct.command, %struct.command* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  br label %16

16:                                               ; preds = %32, %4
  %17 = load i8*, i8** %9, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.command*, %struct.command** %6, align 8
  %29 = load %struct.command**, %struct.command*** %7, align 8
  store %struct.command* %28, %struct.command** %29, align 8
  %30 = load i32, i32* @CMD_UNIQUE, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  br label %54

32:                                               ; preds = %24
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %10, align 8
  br label %16

37:                                               ; preds = %16
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CMD_FOUND, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @CMD_AMBIGUOUS, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %53

48:                                               ; preds = %40
  %49 = load %struct.command*, %struct.command** %6, align 8
  %50 = load %struct.command**, %struct.command*** %7, align 8
  store %struct.command* %49, %struct.command** %50, align 8
  %51 = load i32, i32* @CMD_FOUND, align 4
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %45
  br label %54

54:                                               ; preds = %27, %53, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

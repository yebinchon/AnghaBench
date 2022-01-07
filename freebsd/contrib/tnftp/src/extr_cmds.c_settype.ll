; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_settype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_settype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.types = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"usage: %s [\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@types = common dso_local global %struct.types* null, align 8
@ttyout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" ]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Using %s mode to transfer files.\0A\00", align 1
@typename = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @settype(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.types*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %36

12:                                               ; preds = %9, %2
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @UPRINTF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %17 = load %struct.types*, %struct.types** @types, align 8
  store %struct.types* %17, %struct.types** %5, align 8
  br label %18

18:                                               ; preds = %30, %12
  %19 = load %struct.types*, %struct.types** %5, align 8
  %20 = getelementptr inbounds %struct.types, %struct.types* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* @ttyout, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.types*, %struct.types** %5, align 8
  %27 = getelementptr inbounds %struct.types, %struct.types* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %25, i32 %28)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %30

30:                                               ; preds = %23
  %31 = load %struct.types*, %struct.types** %5, align 8
  %32 = getelementptr inbounds %struct.types, %struct.types* %31, i32 1
  store %struct.types* %32, %struct.types** %5, align 8
  br label %18

33:                                               ; preds = %18
  %34 = load i32, i32* @ttyout, align 4
  %35 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  store i32 -1, i32* @code, align 4
  br label %48

36:                                               ; preds = %9
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @ttyout, align 4
  %41 = load i8*, i8** @typename, align 8
  %42 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  store i32 0, i32* @code, align 4
  br label %48

43:                                               ; preds = %36
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @set_type(i8* %46)
  br label %48

48:                                               ; preds = %43, %39, %33
  ret void
}

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @set_type(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

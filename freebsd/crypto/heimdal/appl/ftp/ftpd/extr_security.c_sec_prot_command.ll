; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_security.c_sec_prot_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_security.c_sec_prot_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 (i32, i32)* }

@sec_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"No security data exchange has taken place.\0A\00", align 1
@code = common dso_local global i32 0, align 4
@mech = common dso_local global %struct.TYPE_2__* null, align 8
@app_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s does not implement %s protection.\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"usage: %s [clear|safe|confidential|private]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sec_prot_command(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %49

9:                                                ; preds = %2
  %10 = load i32, i32* @sec_complete, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* @code, align 4
  br label %54

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @sec_status()
  br label %48

19:                                               ; preds = %14
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @name_to_level(i8* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %49

27:                                               ; preds = %19
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mech, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64 (i32, i32)*, i64 (i32, i32)** %29, align 8
  %31 = load i32, i32* @app_data, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 %30(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mech, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i8* @level_to_name(i32 %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %40)
  store i32 -1, i32* @code, align 4
  br label %54

42:                                               ; preds = %27
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @set_command_prot(i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 -1, i32* @code, align 4
  br label %54

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %17
  store i32 0, i32* @code, align 4
  br label %54

49:                                               ; preds = %26, %8
  %50 = load i8**, i8*** %4, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store i32 -1, i32* @code, align 4
  br label %54

54:                                               ; preds = %49, %48, %46, %35, %12
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sec_status(...) #1

declare dso_local i32 @name_to_level(i8*) #1

declare dso_local i8* @level_to_name(i32) #1

declare dso_local i64 @set_command_prot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

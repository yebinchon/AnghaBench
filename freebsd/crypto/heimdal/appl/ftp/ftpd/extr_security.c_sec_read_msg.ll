; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_security.c_sec_read_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_security.c_sec_read_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32, i32)* }

@mech = common dso_local global %struct.TYPE_2__* null, align 8
@app_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sec_read_msg(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = call i8* @malloc(i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @base64_decode(i8* %13, i8* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mech, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** %17, align 8
  %19 = load i32, i32* @app_data, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 %18(i32 %19, i8* %20, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %63

27:                                               ; preds = %2
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 45
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %41

38:                                               ; preds = %27
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @sscanf(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %50, %41
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strcpy(i8* %57, i8* %58)
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %26
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @base64_decode(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

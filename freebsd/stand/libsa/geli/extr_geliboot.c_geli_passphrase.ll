; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_geliboot.c_geli_passphrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_geliboot.c_geli_passphrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geli_dev = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"GELI Passphrase for %s \00", align 1
@GELI_PW_MAXLEN = common dso_local global i32 0, align 4
@G_ELI_FLAG_GELIDISPLAYPASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geli_passphrase(%struct.geli_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.geli_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.geli_dev* %0, %struct.geli_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %49, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %52

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.geli_dev*, %struct.geli_dev** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @geli_probe(%struct.geli_dev* %20, i8* %21, i32* null)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %53

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %13, %10
  %27 = load %struct.geli_dev*, %struct.geli_dev** %4, align 8
  %28 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @GELI_PW_MAXLEN, align 4
  %33 = load %struct.geli_dev*, %struct.geli_dev** %4, align 8
  %34 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @G_ELI_FLAG_GELIDISPLAYPASS, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @pwgets(i8* %31, i32 %32, i32 %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.geli_dev*, %struct.geli_dev** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @geli_probe(%struct.geli_dev* %43, i8* %44, i32* null)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %53

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %7

52:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %47, %24
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @geli_probe(%struct.geli_dev*, i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pwgets(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

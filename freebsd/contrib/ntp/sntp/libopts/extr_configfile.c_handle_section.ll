; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_handle_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_handle_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@NL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*)* @handle_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_section(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [24 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @strncmp(i8* %13, i8* %16, i64 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, 1
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 93
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i32, i32* @NL, align 4
  %34 = call i8* @strchr(i8* %32, i32 %33)
  store i8* %34, i8** %3, align 8
  br label %56

35:                                               ; preds = %20, %2
  %36 = load i64, i64* %6, align 8
  %37 = icmp ugt i64 %36, 16
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i8* null, i8** %3, align 8
  br label %56

39:                                               ; preds = %35
  %40 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %47 = call i8* @strstr(i8* %45, i8* %46)
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @NL, align 4
  %53 = call i8* @strchr(i8* %51, i32 %52)
  store i8* %53, i8** %5, align 8
  br label %54

54:                                               ; preds = %50, %39
  %55 = load i8*, i8** %5, align 8
  store i8* %55, i8** %3, align 8
  br label %56

56:                                               ; preds = %54, %38, %28
  %57 = load i8*, i8** %3, align 8
  ret i8* %57
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

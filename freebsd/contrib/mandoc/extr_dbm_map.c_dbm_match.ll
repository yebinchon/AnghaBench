; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm_map.c_dbm_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm_map.c_dbm_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbm_match = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbm_match(%struct.dbm_match* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dbm_match*, align 8
  %5 = alloca i8*, align 8
  store %struct.dbm_match* %0, %struct.dbm_match** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.dbm_match*, %struct.dbm_match** %4, align 8
  %7 = getelementptr inbounds %struct.dbm_match, %struct.dbm_match* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %33 [
    i32 130, label %9
    i32 128, label %17
    i32 129, label %25
  ]

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.dbm_match*, %struct.dbm_match** %4, align 8
  %12 = getelementptr inbounds %struct.dbm_match, %struct.dbm_match* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcmp(i8* %10, i32 %13)
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.dbm_match*, %struct.dbm_match** %4, align 8
  %20 = getelementptr inbounds %struct.dbm_match, %struct.dbm_match* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @strcasestr(i8* %18, i32 %21)
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.dbm_match*, %struct.dbm_match** %4, align 8
  %27 = getelementptr inbounds %struct.dbm_match, %struct.dbm_match* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @regexec(i32 %28, i8* %29, i32 0, i32* null, i32 0)
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %2
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %25, %17, %9
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32* @strcasestr(i8*, i32) #1

declare dso_local i32 @regexec(i32, i8*, i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

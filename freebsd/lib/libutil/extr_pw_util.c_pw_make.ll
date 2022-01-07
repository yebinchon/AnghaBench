; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pw_util.c_pw_make.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pw_util.c_pw_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32, i32, i64, i64, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s:%s:%ju:%ju:%s:%ju:%ju:%s:%s:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pw_make(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca i8*, align 8
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  %4 = load %struct.passwd*, %struct.passwd** %2, align 8
  %5 = getelementptr inbounds %struct.passwd, %struct.passwd* %4, i32 0, i32 9
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.passwd*, %struct.passwd** %2, align 8
  %8 = getelementptr inbounds %struct.passwd, %struct.passwd* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.passwd*, %struct.passwd** %2, align 8
  %11 = getelementptr inbounds %struct.passwd, %struct.passwd* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.passwd*, %struct.passwd** %2, align 8
  %15 = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.passwd*, %struct.passwd** %2, align 8
  %19 = getelementptr inbounds %struct.passwd, %struct.passwd* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.passwd*, %struct.passwd** %2, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.passwd*, %struct.passwd** %2, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.passwd*, %struct.passwd** %2, align 8
  %30 = getelementptr inbounds %struct.passwd, %struct.passwd* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.passwd*, %struct.passwd** %2, align 8
  %33 = getelementptr inbounds %struct.passwd, %struct.passwd* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.passwd*, %struct.passwd** %2, align 8
  %36 = getelementptr inbounds %struct.passwd, %struct.passwd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @asprintf(i8** %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9, i32 %13, i32 %17, i32 %20, i32 %24, i32 %28, i32 %31, i32 %34, i32 %37)
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i32 @asprintf(i8**, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

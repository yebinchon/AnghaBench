; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_pwcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_pwcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.passwd* @pwcopy(%struct.passwd* %0) #0 {
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca %struct.passwd*, align 8
  store %struct.passwd* %0, %struct.passwd** %2, align 8
  %4 = call %struct.passwd* @xcalloc(i32 1, i32 64)
  store %struct.passwd* %4, %struct.passwd** %3, align 8
  %5 = load %struct.passwd*, %struct.passwd** %2, align 8
  %6 = getelementptr inbounds %struct.passwd, %struct.passwd* %5, i32 0, i32 9
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @xstrdup(i8* %7)
  %9 = load %struct.passwd*, %struct.passwd** %3, align 8
  %10 = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 9
  store i8* %8, i8** %10, align 8
  %11 = load %struct.passwd*, %struct.passwd** %2, align 8
  %12 = getelementptr inbounds %struct.passwd, %struct.passwd* %11, i32 0, i32 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @xstrdup(i8* %13)
  %15 = load %struct.passwd*, %struct.passwd** %3, align 8
  %16 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i32 0, i32 8
  store i8* %14, i8** %16, align 8
  %17 = load %struct.passwd*, %struct.passwd** %2, align 8
  %18 = getelementptr inbounds %struct.passwd, %struct.passwd* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.passwd*, %struct.passwd** %3, align 8
  %21 = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.passwd*, %struct.passwd** %2, align 8
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.passwd*, %struct.passwd** %3, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.passwd*, %struct.passwd** %2, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @xstrdup(i8* %29)
  %31 = load %struct.passwd*, %struct.passwd** %3, align 8
  %32 = getelementptr inbounds %struct.passwd, %struct.passwd* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.passwd*, %struct.passwd** %2, align 8
  %34 = getelementptr inbounds %struct.passwd, %struct.passwd* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @xstrdup(i8* %35)
  %37 = load %struct.passwd*, %struct.passwd** %3, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.passwd*, %struct.passwd** %3, align 8
  ret %struct.passwd* %39
}

declare dso_local %struct.passwd* @xcalloc(i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

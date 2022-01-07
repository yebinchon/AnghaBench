; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha384-internal.c_sha384_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha384-internal.c_sha384_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha384_state = type { i8**, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha384_init(%struct.sha384_state* %0) #0 {
  %2 = alloca %struct.sha384_state*, align 8
  store %struct.sha384_state* %0, %struct.sha384_state** %2, align 8
  %3 = load %struct.sha384_state*, %struct.sha384_state** %2, align 8
  %4 = getelementptr inbounds %struct.sha384_state, %struct.sha384_state* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.sha384_state*, %struct.sha384_state** %2, align 8
  %6 = getelementptr inbounds %struct.sha384_state, %struct.sha384_state* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = call i8* @CONST64(i32 -1056596264)
  %8 = load %struct.sha384_state*, %struct.sha384_state** %2, align 8
  %9 = getelementptr inbounds %struct.sha384_state, %struct.sha384_state* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  store i8* %7, i8** %11, align 8
  %12 = call i8* @CONST64(i32 914150663)
  %13 = load %struct.sha384_state*, %struct.sha384_state** %2, align 8
  %14 = getelementptr inbounds %struct.sha384_state, %struct.sha384_state* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* %12, i8** %16, align 8
  %17 = call i8* @CONST64(i32 812702999)
  %18 = load %struct.sha384_state*, %struct.sha384_state** %2, align 8
  %19 = getelementptr inbounds %struct.sha384_state, %struct.sha384_state* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  store i8* %17, i8** %21, align 8
  %22 = call i8* @CONST64(i32 -150054599)
  %23 = load %struct.sha384_state*, %struct.sha384_state** %2, align 8
  %24 = getelementptr inbounds %struct.sha384_state, %struct.sha384_state* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 3
  store i8* %22, i8** %26, align 8
  %27 = call i8* @CONST64(i32 -4191439)
  %28 = load %struct.sha384_state*, %struct.sha384_state** %2, align 8
  %29 = getelementptr inbounds %struct.sha384_state, %struct.sha384_state* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 4
  store i8* %27, i8** %31, align 8
  %32 = call i8* @CONST64(i32 1750603025)
  %33 = load %struct.sha384_state*, %struct.sha384_state** %2, align 8
  %34 = getelementptr inbounds %struct.sha384_state, %struct.sha384_state* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 5
  store i8* %32, i8** %36, align 8
  %37 = call i8* @CONST64(i32 1694076839)
  %38 = load %struct.sha384_state*, %struct.sha384_state** %2, align 8
  %39 = getelementptr inbounds %struct.sha384_state, %struct.sha384_state* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 6
  store i8* %37, i8** %41, align 8
  %42 = call i8* @CONST64(i32 -1090891868)
  %43 = load %struct.sha384_state*, %struct.sha384_state** %2, align 8
  %44 = getelementptr inbounds %struct.sha384_state, %struct.sha384_state* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 7
  store i8* %42, i8** %46, align 8
  ret void
}

declare dso_local i8* @CONST64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

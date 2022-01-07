; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibccconfig.c_parsecct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibccconfig.c_parsecct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"ccts are formatted shift:multiplier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32*)* @parsecct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parsecct(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = bitcast [1024 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 1024, i1 false)
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcpy(i8* %12, i8* %13)
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %16 = call i8* @strchr(i8* %15, i8 signext 58)
  store i8* %16, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %37

19:                                               ; preds = %3
  %20 = load i8*, i8** %10, align 8
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %10, align 8
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %24 = load i32*, i32** %6, align 8
  %25 = call i8* @parseint(i8* %23, i32* %24, i32 0)
  store i8* %25, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i8*, i8** %9, align 8
  store i8* %28, i8** %4, align 8
  br label %37

29:                                               ; preds = %19
  %30 = load i8*, i8** %10, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i8* @parseint(i8* %30, i32* %31, i32 0)
  store i8* %32, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i8*, i8** %9, align 8
  store i8* %35, i8** %4, align 8
  br label %37

36:                                               ; preds = %29
  store i8* null, i8** %4, align 8
  br label %37

37:                                               ; preds = %36, %34, %27, %18
  %38 = load i8*, i8** %4, align 8
  ret i8* %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @parseint(i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

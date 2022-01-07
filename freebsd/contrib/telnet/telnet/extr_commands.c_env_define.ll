; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_env_define.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_env_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_lst = type { i32, i8*, i8*, i32, %struct.env_lst*, %struct.env_lst* }

@envlisthead = common dso_local global %struct.env_lst zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.env_lst* @env_define(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.env_lst*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.env_lst* @env_find(i8* %6)
  store %struct.env_lst* %7, %struct.env_lst** %5, align 8
  %8 = icmp ne %struct.env_lst* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %11 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %16 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @free(i8* %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %21 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %26 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @free(i8* %27)
  br label %29

29:                                               ; preds = %24, %19
  br label %50

30:                                               ; preds = %2
  %31 = call i64 @malloc(i32 48)
  %32 = inttoptr i64 %31 to %struct.env_lst*
  store %struct.env_lst* %32, %struct.env_lst** %5, align 8
  %33 = load %struct.env_lst*, %struct.env_lst** getelementptr inbounds (%struct.env_lst, %struct.env_lst* @envlisthead, i32 0, i32 5), align 8
  %34 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %35 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %34, i32 0, i32 5
  store %struct.env_lst* %33, %struct.env_lst** %35, align 8
  %36 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  store %struct.env_lst* %36, %struct.env_lst** getelementptr inbounds (%struct.env_lst, %struct.env_lst* @envlisthead, i32 0, i32 5), align 8
  %37 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %38 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %37, i32 0, i32 4
  store %struct.env_lst* @envlisthead, %struct.env_lst** %38, align 8
  %39 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %40 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %39, i32 0, i32 5
  %41 = load %struct.env_lst*, %struct.env_lst** %40, align 8
  %42 = icmp ne %struct.env_lst* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %45 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %46 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %45, i32 0, i32 5
  %47 = load %struct.env_lst*, %struct.env_lst** %46, align 8
  %48 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %47, i32 0, i32 4
  store %struct.env_lst* %44, %struct.env_lst** %48, align 8
  br label %49

49:                                               ; preds = %43, %30
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @opt_welldefined(i8* %51)
  %53 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %54 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %56 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i8* @strdup(i8* %57)
  %59 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %60 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i8* @strdup(i8* %61)
  %63 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  %64 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.env_lst*, %struct.env_lst** %5, align 8
  ret %struct.env_lst* %65
}

declare dso_local %struct.env_lst* @env_find(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @opt_welldefined(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

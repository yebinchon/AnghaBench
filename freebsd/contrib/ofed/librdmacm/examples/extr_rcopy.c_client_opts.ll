; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_client_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_client_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@src_file = common dso_local global i8* null, align 8
@dst_addr = common dso_local global i8* null, align 8
@dst_file = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"p:\00", align 1
@optarg = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @client_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_opts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @show_usage(i8* %11)
  br label %13

13:                                               ; preds = %8, %2
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** @src_file, align 8
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** @dst_addr, align 8
  %20 = load i8*, i8** @dst_addr, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 58)
  store i8* %21, i8** @dst_file, align 8
  %22 = load i8*, i8** @dst_file, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load i8*, i8** @dst_file, align 8
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** @dst_file, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** @dst_file, align 8
  br label %28

28:                                               ; preds = %24, %13
  %29 = load i8*, i8** @dst_file, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** @src_file, align 8
  store i8* %32, i8** @dst_file, align 8
  br label %33

33:                                               ; preds = %31, %28
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i8**, i8*** %4, align 8
  %37 = call i32 @getopt(i32 %35, i8** %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %5, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %43 [
    i32 112, label %41
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @optarg, align 4
  store i32 %42, i32* @port, align 4
  br label %48

43:                                               ; preds = %39
  %44 = load i8**, i8*** %4, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @show_usage(i8* %46)
  br label %48

48:                                               ; preds = %43, %41
  br label %34

49:                                               ; preds = %34
  ret void
}

declare dso_local i32 @show_usage(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/net/extr_h_servent.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/net/extr_h_servent.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"p:n:P:\00", align 1
@optarg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.servent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %10, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %24 [
    i32 110, label %18
    i32 112, label %20
    i32 80, label %22
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** @optarg, align 8
  store i8* %19, i8** %9, align 8
  br label %26

20:                                               ; preds = %16
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** %7, align 8
  br label %26

22:                                               ; preds = %16
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** %8, align 8
  br label %26

24:                                               ; preds = %16
  %25 = call i32 (...) @usage()
  br label %26

26:                                               ; preds = %24, %22, %20, %18
  br label %11

27:                                               ; preds = %11
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %30, %27
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @atoi(i8* %39)
  %41 = call i32 @htons(i32 %40)
  %42 = load i8*, i8** %8, align 8
  %43 = call %struct.servent* @getservbyport(i32 %41, i8* %42)
  store %struct.servent* %43, %struct.servent** %6, align 8
  %44 = icmp ne %struct.servent* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.servent*, %struct.servent** %6, align 8
  %47 = call i32 @pserv(%struct.servent* %46)
  br label %48

48:                                               ; preds = %45, %38
  store i32 0, i32* %3, align 4
  br label %71

49:                                               ; preds = %35
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call %struct.servent* @getservbyname(i8* %53, i8* %54)
  store %struct.servent* %55, %struct.servent** %6, align 8
  %56 = icmp ne %struct.servent* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.servent*, %struct.servent** %6, align 8
  %59 = call i32 @pserv(%struct.servent* %58)
  br label %60

60:                                               ; preds = %57, %52
  store i32 0, i32* %3, align 4
  br label %71

61:                                               ; preds = %49
  %62 = call i32 @setservent(i32 0)
  br label %63

63:                                               ; preds = %66, %61
  %64 = call %struct.servent* (...) @getservent()
  store %struct.servent* %64, %struct.servent** %6, align 8
  %65 = icmp ne %struct.servent* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.servent*, %struct.servent** %6, align 8
  %68 = call i32 @pserv(%struct.servent* %67)
  br label %63

69:                                               ; preds = %63
  %70 = call i32 (...) @endservent()
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %60, %48
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local %struct.servent* @getservbyport(i32, i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @pserv(%struct.servent*) #1

declare dso_local %struct.servent* @getservbyname(i8*, i8*) #1

declare dso_local i32 @setservent(i32) #1

declare dso_local %struct.servent* @getservent(...) #1

declare dso_local i32 @endservent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

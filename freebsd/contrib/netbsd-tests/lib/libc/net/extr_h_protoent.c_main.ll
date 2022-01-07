; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/net/extr_h_protoent.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/net/extr_h_protoent.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protoent = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"p:n:\00", align 1
@optarg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.protoent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %9, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %21 [
    i32 110, label %17
    i32 112, label %19
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8
  store i8* %18, i8** %8, align 8
  br label %23

19:                                               ; preds = %15
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** %7, align 8
  br label %23

21:                                               ; preds = %15
  %22 = call i32 (...) @usage()
  br label %23

23:                                               ; preds = %21, %19, %17
  br label %10

24:                                               ; preds = %10
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @usage()
  br label %32

32:                                               ; preds = %30, %27, %24
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @atoi(i8* %36)
  %38 = call %struct.protoent* @getprotobynumber(i32 %37)
  store %struct.protoent* %38, %struct.protoent** %6, align 8
  %39 = icmp ne %struct.protoent* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.protoent*, %struct.protoent** %6, align 8
  %42 = call i32 @pserv(%struct.protoent* %41)
  br label %43

43:                                               ; preds = %40, %35
  store i32 0, i32* %3, align 4
  br label %65

44:                                               ; preds = %32
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = call %struct.protoent* @getprotobyname(i8* %48)
  store %struct.protoent* %49, %struct.protoent** %6, align 8
  %50 = icmp ne %struct.protoent* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.protoent*, %struct.protoent** %6, align 8
  %53 = call i32 @pserv(%struct.protoent* %52)
  br label %54

54:                                               ; preds = %51, %47
  store i32 0, i32* %3, align 4
  br label %65

55:                                               ; preds = %44
  %56 = call i32 @setprotoent(i32 0)
  br label %57

57:                                               ; preds = %60, %55
  %58 = call %struct.protoent* (...) @getprotoent()
  store %struct.protoent* %58, %struct.protoent** %6, align 8
  %59 = icmp ne %struct.protoent* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.protoent*, %struct.protoent** %6, align 8
  %62 = call i32 @pserv(%struct.protoent* %61)
  br label %57

63:                                               ; preds = %57
  %64 = call i32 (...) @endprotoent()
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %54, %43
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local %struct.protoent* @getprotobynumber(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @pserv(%struct.protoent*) #1

declare dso_local %struct.protoent* @getprotobyname(i8*) #1

declare dso_local i32 @setprotoent(i32) #1

declare dso_local %struct.protoent* @getprotoent(...) #1

declare dso_local i32 @endprotoent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

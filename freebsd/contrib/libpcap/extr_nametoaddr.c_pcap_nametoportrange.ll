; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_nametoaddr.c_pcap_nametoportrange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_nametoaddr.c_pcap_nametoportrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@PROTO_UNDEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_nametoportrange(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11)
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %63

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %13, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %71

23:                                               ; preds = %18
  %24 = load i8*, i8** %13, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 45)
  store i8* %25, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @free(i8* %28)
  store i32 0, i32* %5, align 4
  br label %71

30:                                               ; preds = %23
  %31 = load i8*, i8** %12, align 8
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %13, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @pcap_nametoport(i8* %32, i32* %33, i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @free(i8* %38)
  store i32 0, i32* %5, align 4
  br label %71

40:                                               ; preds = %30
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %14, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @pcap_nametoport(i8* %44, i32* %45, i32* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @free(i8* %50)
  store i32 0, i32* %5, align 4
  br label %71

52:                                               ; preds = %40
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @PROTO_UNDEF, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %52
  br label %70

63:                                               ; preds = %4
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @PROTO_UNDEF, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %62
  store i32 1, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %49, %37, %27, %22
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @pcap_nametoport(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

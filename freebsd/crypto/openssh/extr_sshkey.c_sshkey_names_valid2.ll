; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_names_valid2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_names_valid2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keytype = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@KEY_UNSPEC = common dso_local global i32 0, align 4
@keytypes = common dso_local global %struct.keytype* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_names_valid2(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.keytype*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %79

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** %7, align 8
  store i8* %20, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %79

23:                                               ; preds = %18
  %24 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %74, %23
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %76

35:                                               ; preds = %33
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @sshkey_type_from_name(i8* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @KEY_UNSPEC, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %41
  %45 = load %struct.keytype*, %struct.keytype** @keytypes, align 8
  store %struct.keytype* %45, %struct.keytype** %9, align 8
  br label %46

46:                                               ; preds = %60, %44
  %47 = load %struct.keytype*, %struct.keytype** %9, align 8
  %48 = getelementptr inbounds %struct.keytype, %struct.keytype* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.keytype*, %struct.keytype** %9, align 8
  %53 = getelementptr inbounds %struct.keytype, %struct.keytype* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @match_pattern_list(i32 %54, i8* %55, i32 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.keytype*, %struct.keytype** %9, align 8
  %62 = getelementptr inbounds %struct.keytype, %struct.keytype* %61, i32 1
  store %struct.keytype* %62, %struct.keytype** %9, align 8
  br label %46

63:                                               ; preds = %58, %46
  %64 = load %struct.keytype*, %struct.keytype** %9, align 8
  %65 = getelementptr inbounds %struct.keytype, %struct.keytype* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %74

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %41
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @free(i8* %71)
  store i32 0, i32* %3, align 4
  br label %79

73:                                               ; preds = %35
  br label %74

74:                                               ; preds = %73, %68
  %75 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %75, i8** %8, align 8
  br label %25

76:                                               ; preds = %33
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @free(i8* %77)
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %70, %22, %17
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @sshkey_type_from_name(i8*) #1

declare dso_local i64 @match_pattern_list(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

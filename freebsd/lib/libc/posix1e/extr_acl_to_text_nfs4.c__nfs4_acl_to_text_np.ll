; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_to_text_nfs4.c__nfs4_acl_to_text_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_to_text_nfs4.c__nfs4_acl_to_text_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ACL_FIRST_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAX_ENTRY_LENGTH = common dso_local global i32 0, align 4
@ACL_NEXT_ENTRY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_nfs4_acl_to_text_np(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @ACL_FIRST_ENTRY, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %4, align 8
  br label %83

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MAX_ENTRY_LENGTH, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i8* @malloc(i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i8* null, i8** %4, align 8
  br label %83

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %63, %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @acl_get_entry(%struct.TYPE_6__* %36, i32 %37, i32* %13)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %66

40:                                               ; preds = %35
  %41 = load i32, i32* @ACL_NEXT_ENTRY, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @format_entry(i8* %50, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %40
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  br label %83

63:                                               ; preds = %40
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @strlen(i8* %64)
  store i32 %65, i32* %9, align 4
  br label %35

66:                                               ; preds = %35
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8 0, i8* %75, align 1
  %76 = load i32*, i32** %6, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %66
  %82 = load i8*, i8** %12, align 8
  store i8* %82, i8** %4, align 8
  br label %83

83:                                               ; preds = %81, %59, %33, %20
  %84 = load i8*, i8** %4, align 8
  ret i8* %84
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @acl_get_entry(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @format_entry(i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_sha1.c_ldns_sha1_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_sha1.c_ldns_sha1_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32 }

@LDNS_SHA1_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\80\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_sha1_final(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 1
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i32, i32* @LDNS_SHA1_DIGEST_LENGTH, align 4
  %8 = zext i32 %7 to i64
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %26, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 7
  %18 = sub i32 7, %17
  %19 = mul i32 %18, 8
  %20 = ashr i32 %15, %19
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %24
  store i8 %22, i8* %25, align 1
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = call i32 @ldns_sha1_update(%struct.TYPE_4__* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %32

32:                                               ; preds = %38, %29
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 504
  %37 = icmp ne i32 %36, 448
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = call i32 @ldns_sha1_update(%struct.TYPE_4__* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %32

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %44 = call i32 @ldns_sha1_update(%struct.TYPE_4__* %42, i8* %43, i32 8)
  %45 = load i8*, i8** %3, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @LDNS_SHA1_DIGEST_LENGTH, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = lshr i32 %56, 2
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 3
  %63 = sub i32 3, %62
  %64 = mul i32 %63, 8
  %65 = ashr i32 %60, %64
  %66 = and i32 %65, 255
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  br label %72

72:                                               ; preds = %52
  %73 = load i32, i32* %5, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %48

75:                                               ; preds = %48
  br label %76

76:                                               ; preds = %75, %41
  ret void
}

declare dso_local i32 @ldns_sha1_update(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

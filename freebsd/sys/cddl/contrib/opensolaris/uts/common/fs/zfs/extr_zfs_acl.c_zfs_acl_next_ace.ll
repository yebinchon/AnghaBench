; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_acl_next_ace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_acl_next_ace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__, %struct.TYPE_11__*, i32 }
%struct.TYPE_9__ = type { i64 (i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*)*, i32 (i8*)* }
%struct.TYPE_11__ = type { i64, i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, i8*, i32*, i32*, i32*, i32*)* @zfs_acl_next_ace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zfs_acl_next_ace(%struct.TYPE_10__* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = call i32 @ASSERT(%struct.TYPE_10__* %17)
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %6
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = call %struct.TYPE_11__* @list_head(i32* %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %14, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %26 = icmp eq %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i8* null, i8** %7, align 8
  br label %150

28:                                               ; preds = %21
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %28, %6
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %14, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %44 = icmp eq %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i8* null, i8** %7, align 8
  br label %150

46:                                               ; preds = %39
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %46
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %58 = call %struct.TYPE_11__* @list_next(i32* %56, %struct.TYPE_11__* %57)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %14, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %60 = icmp eq %struct.TYPE_11__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i8* null, i8** %7, align 8
  br label %150

62:                                               ; preds = %54
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %46
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %149

82:                                               ; preds = %74
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %15, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64 (i8*)*, i64 (i8*)** %88, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = call i64 %89(i8* %90)
  store i64 %91, i64* %16, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load i64, i64* %16, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  %104 = icmp ugt i64 %95, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %82
  store i8* null, i8** %7, align 8
  br label %150

106:                                              ; preds = %82
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  %110 = load i32 (i8*)*, i32 (i8*)** %109, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = call i32 %110(i8* %111)
  %113 = load i32*, i32** %12, align 8
  store i32 %112, i32* %113, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = load i32 (i8*)*, i32 (i8*)** %116, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = call i32 %117(i8* %118)
  %120 = load i32*, i32** %13, align 8
  store i32 %119, i32* %120, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32 (i8*)*, i32 (i8*)** %123, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = call i32 %124(i8* %125)
  %127 = load i32*, i32** %11, align 8
  store i32 %126, i32* %127, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32 (i8*)*, i32 (i8*)** %130, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = call i32 %131(i8* %132)
  %134 = load i32*, i32** %10, align 8
  store i32 %133, i32* %134, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = load i64, i64* %16, align 8
  %140 = add i64 %138, %139
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  %148 = load i8*, i8** %15, align 8
  store i8* %148, i8** %7, align 8
  br label %150

149:                                              ; preds = %74
  store i8* null, i8** %7, align 8
  br label %150

150:                                              ; preds = %149, %106, %105, %61, %45, %27
  %151 = load i8*, i8** %7, align 8
  ret i8* %151
}

declare dso_local i32 @ASSERT(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @list_head(i32*) #1

declare dso_local %struct.TYPE_11__* @list_next(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

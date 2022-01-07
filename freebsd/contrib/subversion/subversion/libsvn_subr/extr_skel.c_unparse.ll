; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_skel.c_unparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_skel.c_unparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i64, %struct.TYPE_11__*, %struct.TYPE_11__*, i64 }
%struct.TYPE_10__ = type { i64 }

@SVN_INT64_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_11__*, %struct.TYPE_10__*)* @unparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @unparse(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call i64 @use_implicit(%struct.TYPE_11__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_10__* %18, i8* %21, i64 %24)
  br label %66

26:                                               ; preds = %13
  %27 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %28 = add nsw i32 200, %27
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %5, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %6, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @svn__ui64toa(i8* %31, i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp sgt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %43, %44
  %46 = add nsw i64 %45, 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @svn_stringbuf_ensure(%struct.TYPE_10__* %40, i64 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_10__* %52, i8* %31, i64 %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_10__* %55, i8 signext 32)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_10__* %57, i8* %60, i64 %63)
  %65 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %65)
  br label %66

66:                                               ; preds = %26, %17
  br label %95

67:                                               ; preds = %2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_10__* %68, i8 signext 40)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %8, align 8
  br label %73

73:                                               ; preds = %88, %67
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = icmp ne %struct.TYPE_11__* %74, null
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = call %struct.TYPE_10__* @unparse(%struct.TYPE_11__* %77, %struct.TYPE_10__* %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = icmp ne %struct.TYPE_11__* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_10__* %85, i8 signext 32)
  br label %87

87:                                               ; preds = %84, %76
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %8, align 8
  br label %73

92:                                               ; preds = %73
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_10__* %93, i8 signext 41)
  br label %95

95:                                               ; preds = %92, %66
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %96
}

declare dso_local i64 @use_implicit(%struct.TYPE_11__*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_10__*, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @svn__ui64toa(i8*, i64) #1

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

declare dso_local i32 @svn_stringbuf_ensure(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_10__*, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

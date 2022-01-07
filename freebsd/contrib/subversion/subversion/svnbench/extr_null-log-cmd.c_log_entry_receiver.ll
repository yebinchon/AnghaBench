; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_null-log-cmd.c_log_entry_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_null-log-cmd.c_log_entry_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32 }
%struct.log_receiver_baton = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 (i32)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_5__*, i32*)* @log_entry_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @log_entry_receiver(i8* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.log_receiver_baton*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.log_receiver_baton*
  store %struct.log_receiver_baton* %15, %struct.log_receiver_baton** %8, align 8
  %16 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %17 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %16, i32 0, i32 9
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = icmp ne i32 (i32)* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %24 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %23, i32 0, i32 9
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %29 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %28, i32 0, i32 9
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %27(i32 %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  br label %35

35:                                               ; preds = %22, %3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @SVN_IS_VALID_REVNUM(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %43 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %4, align 8
  br label %147

47:                                               ; preds = %35
  %48 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %49 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %53, i32** %4, align 8
  br label %147

54:                                               ; preds = %47
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @svn_compat_log_revprops_out(i8** %9, i8** %10, i8** %11, i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load i8*, i8** %11, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %67, i32** %4, align 8
  br label %147

68:                                               ; preds = %63, %54
  %69 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %70 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %74 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %79 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %77, %68
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @svn_cstring_count_newlines(i8* %86)
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %91 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %95 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %85
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %101 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %85
  br label %105

105:                                              ; preds = %104, %82
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %105
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @apr_hash_count(i64 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %117 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %121 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %110
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %127 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = add i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %110
  br label %131

131:                                              ; preds = %130, %105
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %138 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %138, align 8
  %141 = load %struct.log_receiver_baton*, %struct.log_receiver_baton** %8, align 8
  %142 = getelementptr inbounds %struct.log_receiver_baton, %struct.log_receiver_baton* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %136, %131
  %146 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %146, i32** %4, align 8
  br label %147

147:                                              ; preds = %145, %66, %52, %41
  %148 = load i32*, i32** %4, align 8
  ret i32* %148
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @svn_compat_log_revprops_out(i8**, i8**, i8**, i32) #1

declare dso_local i32 @svn_cstring_count_newlines(i8*) #1

declare dso_local i32 @apr_hash_count(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

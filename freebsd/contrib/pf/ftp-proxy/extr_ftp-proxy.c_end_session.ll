; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_end_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/ftp-proxy/extr_ftp-proxy.c_end_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"#%d ending session\00", align 1
@errno = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"#%d pf rule removal failed: %s\00", align 1
@entry = common dso_local global i32 0, align 4
@session_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_session(%struct.session* %0) #0 {
  %2 = alloca %struct.session*, align 8
  %3 = alloca i32, align 4
  store %struct.session* %0, %struct.session** %2, align 8
  %4 = load i32, i32* @LOG_INFO, align 4
  %5 = load %struct.session*, %struct.session** %2, align 8
  %6 = getelementptr inbounds %struct.session, %struct.session* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i32, i8*, i32, ...) @logmsg(i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.session*, %struct.session** %2, align 8
  %10 = getelementptr inbounds %struct.session, %struct.session* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.session*, %struct.session** %2, align 8
  %15 = getelementptr inbounds %struct.session, %struct.session* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.session*, %struct.session** %2, align 8
  %20 = getelementptr inbounds %struct.session, %struct.session* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.session*, %struct.session** %2, align 8
  %25 = getelementptr inbounds %struct.session, %struct.session* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @evbuffer_write(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %18, %13, %1
  %29 = load %struct.session*, %struct.session** %2, align 8
  %30 = getelementptr inbounds %struct.session, %struct.session* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load %struct.session*, %struct.session** %2, align 8
  %35 = getelementptr inbounds %struct.session, %struct.session* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.session*, %struct.session** %2, align 8
  %40 = getelementptr inbounds %struct.session, %struct.session* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.session*, %struct.session** %2, align 8
  %45 = getelementptr inbounds %struct.session, %struct.session* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @evbuffer_write(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %38, %33, %28
  %49 = load %struct.session*, %struct.session** %2, align 8
  %50 = getelementptr inbounds %struct.session, %struct.session* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.session*, %struct.session** %2, align 8
  %55 = getelementptr inbounds %struct.session, %struct.session* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @close(i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.session*, %struct.session** %2, align 8
  %60 = getelementptr inbounds %struct.session, %struct.session* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.session*, %struct.session** %2, align 8
  %65 = getelementptr inbounds %struct.session, %struct.session* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @close(i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.session*, %struct.session** %2, align 8
  %70 = getelementptr inbounds %struct.session, %struct.session* %69, i32 0, i32 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = icmp ne %struct.TYPE_2__* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.session*, %struct.session** %2, align 8
  %75 = getelementptr inbounds %struct.session, %struct.session* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = call i32 @bufferevent_free(%struct.TYPE_2__* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.session*, %struct.session** %2, align 8
  %80 = getelementptr inbounds %struct.session, %struct.session* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = icmp ne %struct.TYPE_2__* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.session*, %struct.session** %2, align 8
  %85 = getelementptr inbounds %struct.session, %struct.session* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = call i32 @bufferevent_free(%struct.TYPE_2__* %86)
  br label %88

88:                                               ; preds = %83, %78
  store i32 0, i32* %3, align 4
  %89 = load %struct.session*, %struct.session** %2, align 8
  %90 = getelementptr inbounds %struct.session, %struct.session* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @prepare_commit(i32 %91)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @errno, align 4
  store i32 %95, i32* %3, align 4
  br label %103

96:                                               ; preds = %88
  %97 = call i32 (...) @do_commit()
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @errno, align 4
  store i32 %100, i32* %3, align 4
  %101 = call i32 (...) @do_rollback()
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102, %94
  %104 = load i32, i32* %3, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i32, i32* @LOG_ERR, align 4
  %108 = load %struct.session*, %struct.session** %2, align 8
  %109 = getelementptr inbounds %struct.session, %struct.session* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @strerror(i32 %111)
  %113 = call i32 (i32, i8*, i32, ...) @logmsg(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %106, %103
  %115 = load %struct.session*, %struct.session** %2, align 8
  %116 = load i32, i32* @entry, align 4
  %117 = call i32 @LIST_REMOVE(%struct.session* %115, i32 %116)
  %118 = load %struct.session*, %struct.session** %2, align 8
  %119 = call i32 @free(%struct.session* %118)
  %120 = load i32, i32* @session_count, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* @session_count, align 4
  ret void
}

declare dso_local i32 @logmsg(i32, i8*, i32, ...) #1

declare dso_local i32 @evbuffer_write(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @bufferevent_free(%struct.TYPE_2__*) #1

declare dso_local i32 @prepare_commit(i32) #1

declare dso_local i32 @do_commit(...) #1

declare dso_local i32 @do_rollback(...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.session*, i32) #1

declare dso_local i32 @free(%struct.session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

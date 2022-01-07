; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_compat.c_gls_log_receiver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_compat.c_gls_log_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.gls_log_receiver_baton = type { i8*, i32, i32, i32, i32, i32, i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_3__*, i32*)* @gls_log_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gls_log_receiver(i8* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.gls_log_receiver_baton*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.gls_log_receiver_baton*
  store %struct.gls_log_receiver_baton* %13, %struct.gls_log_receiver_baton** %8, align 8
  %14 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %15 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  %17 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %18 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %22, i32** %4, align 8
  br label %128

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %29 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32* @prev_log_path(i8** %10, i32* null, i32* %11, i32 %26, i8* %27, i32 %30, i32 %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32* %35)
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %61, label %39

39:                                               ; preds = %23
  %40 = load i64, i64* @TRUE, align 8
  %41 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %42 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %41, i32 0, i32 6
  store i64 %40, i64* %42, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %45 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %51 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %54 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %57 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32* @maybe_crop_and_send_segment(i8* %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32* %59)
  store i32* %60, i32** %4, align 8
  br label %128

61:                                               ; preds = %23
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @SVN_IS_VALID_REVNUM(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %126

65:                                               ; preds = %61
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %68 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %74 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %77 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %80 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32* @maybe_crop_and_send_segment(i8* %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32* %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %90 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %93, %94
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %118

97:                                               ; preds = %65
  %98 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %99 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %104 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %107 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %110 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = call i32* @maybe_crop_and_send_segment(i8* null, i32 %100, i32 %102, i32 %105, i32 %108, i32 %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32* %113)
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %117 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %97, %65
  %119 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %120 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = call i8* @apr_pstrdup(i32 %121, i8* %122)
  %124 = load %struct.gls_log_receiver_baton*, %struct.gls_log_receiver_baton** %8, align 8
  %125 = getelementptr inbounds %struct.gls_log_receiver_baton, %struct.gls_log_receiver_baton* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %118, %61
  %127 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %127, i32** %4, align 8
  br label %128

128:                                              ; preds = %126, %39, %21
  %129 = load i32*, i32** %4, align 8
  ret i32* %129
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @prev_log_path(i8**, i32*, i32*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32* @maybe_crop_and_send_segment(i8*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

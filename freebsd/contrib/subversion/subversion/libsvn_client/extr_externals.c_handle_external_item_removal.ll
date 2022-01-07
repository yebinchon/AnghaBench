; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_handle_external_item_removal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_handle_external_item_removal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 (i32, %struct.TYPE_13__*, i32*)*, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_LOCKED = common dso_local global i64 0, align 8
@svn_wc_notify_update_external_removed = common dso_local global i32 0, align 4
@SVN_ERR_WC_LEFT_LOCAL_MOD = common dso_local global i64 0, align 8
@svn_wc_notify_left_local_modifications = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_15__*, i8*, i8*, i32*)* @handle_external_item_removal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @handle_external_item_removal(%struct.TYPE_15__* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %12, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* @FALSE, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @svn_wc__read_external_info(i64* %10, i32* null, i32* null, i32* null, i32* null, i32 %17, i8* %18, i8* %19, i64 %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @TRUE, align 4
  %30 = load i64, i64* @FALSE, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @svn_wc_read_kind2(i64* %11, i32 %27, i8* %28, i32 %29, i64 %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i64, i64* @svn_node_none, align 8
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %37, %4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call %struct.TYPE_14__* @remove_external(i64* %12, i32 %42, i8* %43, i8* %44, i64 %45, i32 %48, i32 %51, i32* %52)
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %9, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %55 = icmp ne %struct.TYPE_14__* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %39
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SVN_ERR_WC_NOT_LOCKED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %67 = call i32 @svn_error_clear(%struct.TYPE_14__* %66)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  br label %68

68:                                               ; preds = %65, %62, %56, %39
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32 (i32, %struct.TYPE_13__*, i32*)*, i32 (i32, %struct.TYPE_13__*, i32*)** %70, align 8
  %72 = icmp ne i32 (i32, %struct.TYPE_13__*, i32*)* %71, null
  br i1 %72, label %73, label %122

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* @svn_wc_notify_update_external_removed, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = call %struct.TYPE_13__* @svn_wc_create_notify(i8* %74, i32 %75, i32* %76)
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %13, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i32 (i32, %struct.TYPE_13__*, i32*)*, i32 (i32, %struct.TYPE_13__*, i32*)** %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 %86(i32 %89, %struct.TYPE_13__* %90, i32* %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %94 = icmp ne %struct.TYPE_14__* %93, null
  br i1 %94, label %95, label %121

95:                                               ; preds = %73
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SVN_ERR_WC_LEFT_LOCAL_MOD, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %121

101:                                              ; preds = %95
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* @svn_wc_notify_left_local_modifications, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = call %struct.TYPE_13__* @svn_wc_create_notify(i8* %102, i32 %103, i32* %104)
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %13, align 8
  %106 = load i64, i64* @svn_node_dir, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  store %struct.TYPE_14__* %109, %struct.TYPE_14__** %111, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32 (i32, %struct.TYPE_13__*, i32*)*, i32 (i32, %struct.TYPE_13__*, i32*)** %113, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 %114(i32 %117, %struct.TYPE_13__* %118, i32* %119)
  br label %121

121:                                              ; preds = %101, %95, %73
  br label %122

122:                                              ; preds = %121, %68
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %124 = icmp ne %struct.TYPE_14__* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SVN_ERR_WC_LEFT_LOCAL_MOD, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %133 = call i32 @svn_error_clear(%struct.TYPE_14__* %132)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  br label %134

134:                                              ; preds = %131, %125, %122
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %136 = call %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__* %135)
  ret %struct.TYPE_14__* %136
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__read_external_info(i64*, i32*, i32*, i32*, i32*, i32, i8*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i64, i32*) #1

declare dso_local %struct.TYPE_14__* @remove_external(i64*, i32, i8*, i8*, i64, i32, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_txn_body_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_txn_body_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }
%struct.unlock_args = type { i32, i32*, i32 }
%struct.TYPE_17__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_16__*)* @txn_body_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_unlock(i8* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.unlock_args*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.unlock_args*
  store %struct.unlock_args* %10, %struct.unlock_args** %6, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %14 = load %struct.unlock_args*, %struct.unlock_args** %6, align 8
  %15 = getelementptr inbounds %struct.unlock_args, %struct.unlock_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @svn_fs_bdb__lock_token_get(i8** %7, %struct.TYPE_18__* %13, i32 %16, %struct.TYPE_16__* %17, i32 %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load %struct.unlock_args*, %struct.unlock_args** %6, align 8
  %24 = getelementptr inbounds %struct.unlock_args, %struct.unlock_args* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %116, label %27

27:                                               ; preds = %2
  %28 = load %struct.unlock_args*, %struct.unlock_args** %6, align 8
  %29 = getelementptr inbounds %struct.unlock_args, %struct.unlock_args* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = load %struct.unlock_args*, %struct.unlock_args** %6, align 8
  %37 = getelementptr inbounds %struct.unlock_args, %struct.unlock_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @svn_fs_base__err_no_lock_token(%struct.TYPE_18__* %35, i32 %38)
  store i32* %39, i32** %3, align 8
  br label %123

40:                                               ; preds = %27
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.unlock_args*, %struct.unlock_args** %6, align 8
  %43 = getelementptr inbounds %struct.unlock_args, %struct.unlock_args* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @strcmp(i8* %41, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = load %struct.unlock_args*, %struct.unlock_args** %6, align 8
  %52 = getelementptr inbounds %struct.unlock_args, %struct.unlock_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32* @SVN_FS__ERR_NO_SUCH_LOCK(%struct.TYPE_18__* %50, i32 %53)
  store i32* %54, i32** %3, align 8
  br label %123

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @svn_fs_bdb__lock_get(%struct.TYPE_17__** %8, %struct.TYPE_18__* %59, i8* %60, %struct.TYPE_16__* %61, i32 %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = icmp ne %struct.TYPE_15__* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %56
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %73, %56
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = call i32* @SVN_FS__ERR_NO_USER(%struct.TYPE_18__* %85)
  store i32* %86, i32** %3, align 8
  br label %123

87:                                               ; preds = %73
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @strcmp(i8* %94, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %87
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32* @SVN_FS__ERR_LOCK_OWNER_MISMATCH(%struct.TYPE_18__* %103, i8* %110, i32* %113)
  store i32* %114, i32** %3, align 8
  br label %123

115:                                              ; preds = %87
  br label %116

116:                                              ; preds = %115, %2
  %117 = load i8*, i8** %7, align 8
  %118 = load %struct.unlock_args*, %struct.unlock_args** %6, align 8
  %119 = getelementptr inbounds %struct.unlock_args, %struct.unlock_args* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %122 = call i32* @delete_lock_and_token(i8* %117, i32 %120, %struct.TYPE_16__* %121)
  store i32* %122, i32** %3, align 8
  br label %123

123:                                              ; preds = %116, %100, %82, %47, %32
  %124 = load i32*, i32** %3, align 8
  ret i32* %124
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__lock_token_get(i8**, %struct.TYPE_18__*, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32* @svn_fs_base__err_no_lock_token(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32* @SVN_FS__ERR_NO_SUCH_LOCK(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @svn_fs_bdb__lock_get(%struct.TYPE_17__**, %struct.TYPE_18__*, i8*, %struct.TYPE_16__*, i32) #1

declare dso_local i32* @SVN_FS__ERR_NO_USER(%struct.TYPE_18__*) #1

declare dso_local i32* @SVN_FS__ERR_LOCK_OWNER_MISMATCH(%struct.TYPE_18__*, i8*, i32*) #1

declare dso_local i32* @delete_lock_and_token(i8*, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/objects/extr_obj_dat.c_OBJ_sn2nid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/objects/extr_obj_dat.c_OBJ_sn2nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }

@added = common dso_local global i32* null, align 8
@ADDED_SNAME = common dso_local global i32 0, align 4
@sn_objs = common dso_local global i32 0, align 4
@NUM_SN = common dso_local global i32 0, align 4
@NID_undef = common dso_local global i32 0, align 4
@nid_objs = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OBJ_sn2nid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = load i32*, i32** @added, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load i32, i32* @ADDED_SNAME, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %16, align 8
  %17 = load i32*, i32** @added, align 8
  %18 = call %struct.TYPE_8__* @lh_ADDED_OBJ_retrieve(i32* %17, %struct.TYPE_8__* %6)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %7, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* @sn_objs, align 4
  %30 = load i32, i32* @NUM_SN, align 4
  %31 = call i32* @OBJ_bsearch_sn(%struct.TYPE_7__** %5, i32 %29, i32 %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @NID_undef, align 4
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %28
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @nid_objs, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %36, %34, %21
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_8__* @lh_ADDED_OBJ_retrieve(i32*, %struct.TYPE_8__*) #1

declare dso_local i32* @OBJ_bsearch_sn(%struct.TYPE_7__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

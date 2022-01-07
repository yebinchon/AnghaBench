; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_txn_body_write_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_reps-strings.c_txn_body_write_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.write_rep_args = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_6__*)* @txn_body_write_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_write_rep(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.write_rep_args*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.write_rep_args*
  store %struct.write_rep_args* %7, %struct.write_rep_args** %5, align 8
  %8 = load %struct.write_rep_args*, %struct.write_rep_args** %5, align 8
  %9 = getelementptr inbounds %struct.write_rep_args, %struct.write_rep_args* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.write_rep_args*, %struct.write_rep_args** %5, align 8
  %14 = getelementptr inbounds %struct.write_rep_args, %struct.write_rep_args* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.write_rep_args*, %struct.write_rep_args** %5, align 8
  %19 = getelementptr inbounds %struct.write_rep_args, %struct.write_rep_args* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.write_rep_args*, %struct.write_rep_args** %5, align 8
  %22 = getelementptr inbounds %struct.write_rep_args, %struct.write_rep_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.write_rep_args*, %struct.write_rep_args** %5, align 8
  %25 = getelementptr inbounds %struct.write_rep_args, %struct.write_rep_args* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rep_write(i32 %12, i32 %17, i32 %20, i32 %23, i32 %28, %struct.TYPE_6__* %29, i32 %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.write_rep_args*, %struct.write_rep_args** %5, align 8
  %36 = getelementptr inbounds %struct.write_rep_args, %struct.write_rep_args* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.write_rep_args*, %struct.write_rep_args** %5, align 8
  %41 = getelementptr inbounds %struct.write_rep_args, %struct.write_rep_args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.write_rep_args*, %struct.write_rep_args** %5, align 8
  %44 = getelementptr inbounds %struct.write_rep_args, %struct.write_rep_args* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @svn_checksum_update(i32 %39, i32 %42, i32 %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.write_rep_args*, %struct.write_rep_args** %5, align 8
  %49 = getelementptr inbounds %struct.write_rep_args, %struct.write_rep_args* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.write_rep_args*, %struct.write_rep_args** %5, align 8
  %54 = getelementptr inbounds %struct.write_rep_args, %struct.write_rep_args* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.write_rep_args*, %struct.write_rep_args** %5, align 8
  %57 = getelementptr inbounds %struct.write_rep_args, %struct.write_rep_args* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @svn_checksum_update(i32 %52, i32 %55, i32 %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @rep_write(i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @svn_checksum_update(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_bio_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_bio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_command = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }
%struct.aac_blockread_response = type { i64 }
%struct.aac_blockwrite_response = type { i64 }
%struct.bio = type { i64, i32, i32, i64 }

@BIO_READ = common dso_local global i64 0, align 8
@ST_OK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_command*)* @aac_bio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_bio_complete(%struct.aac_command* %0) #0 {
  %2 = alloca %struct.aac_command*, align 8
  %3 = alloca %struct.aac_blockread_response*, align 8
  %4 = alloca %struct.aac_blockwrite_response*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i64, align 8
  store %struct.aac_command* %0, %struct.aac_command** %2, align 8
  %7 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %8 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.bio*
  store %struct.bio* %10, %struct.bio** %5, align 8
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BIO_READ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %18 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = bitcast i32* %22 to %struct.aac_blockread_response*
  store %struct.aac_blockread_response* %23, %struct.aac_blockread_response** %3, align 8
  %24 = load %struct.aac_blockread_response*, %struct.aac_blockread_response** %3, align 8
  %25 = getelementptr inbounds %struct.aac_blockread_response, %struct.aac_blockread_response* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  br label %38

27:                                               ; preds = %1
  %28 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %29 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = bitcast i32* %33 to %struct.aac_blockwrite_response*
  store %struct.aac_blockwrite_response* %34, %struct.aac_blockwrite_response** %4, align 8
  %35 = load %struct.aac_blockwrite_response*, %struct.aac_blockwrite_response** %4, align 8
  %36 = getelementptr inbounds %struct.aac_blockwrite_response, %struct.aac_blockwrite_response* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %27, %16
  %39 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %40 = call i32 @aac_release_command(%struct.aac_command* %39)
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @ST_OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.bio*, %struct.bio** %5, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  br label %56

47:                                               ; preds = %38
  %48 = load i32, i32* @EIO, align 4
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @BIO_ERROR, align 4
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %47, %44
  %57 = load %struct.bio*, %struct.bio** %5, align 8
  %58 = call i32 @aac_biodone(%struct.bio* %57)
  ret void
}

declare dso_local i32 @aac_release_command(%struct.aac_command*) #1

declare dso_local i32 @aac_biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

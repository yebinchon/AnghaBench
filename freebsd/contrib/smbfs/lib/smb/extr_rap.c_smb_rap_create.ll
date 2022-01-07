; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rap.c_smb_rap_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rap.c_smb_rap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rap = type { i8*, i8*, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_rap_create(i32 %0, i8* %1, i8* %2, %struct.smb_rap** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.smb_rap**, align 8
  %10 = alloca %struct.smb_rap*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.smb_rap** %3, %struct.smb_rap*** %9, align 8
  %14 = call i8* @malloc(i32 48)
  %15 = bitcast i8* %14 to %struct.smb_rap*
  store %struct.smb_rap* %15, %struct.smb_rap** %10, align 8
  %16 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %17 = icmp eq %struct.smb_rap* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %5, align 4
  br label %78

20:                                               ; preds = %4
  %21 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %22 = call i32 @bzero(%struct.smb_rap* %21, i32 48)
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @strdup(i8* %23)
  %25 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %26 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %28 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %27, i32 0, i32 0
  store i8* %24, i8** %28, align 8
  store i8* %24, i8** %11, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @strdup(i8* %29)
  %31 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %32 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %34 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %33, i32 0, i32 2
  store i8* %30, i8** %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = add nsw i32 2, %36
  %38 = add nsw i32 %37, 1
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = add nsw i32 %38, %40
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %52, %20
  %44 = load i8*, i8** %11, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @smb_rap_parserqparam(i8* %48, i8** %11, i32* %12)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %56

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %13, align 4
  br label %43

56:                                               ; preds = %51, %43
  %57 = load i32, i32* %13, align 4
  %58 = call i8* @malloc(i32 %57)
  %59 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %60 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %62 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %61, i32 0, i32 5
  store i8* %58, i8** %62, align 8
  %63 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @smb_rap_rqparam(%struct.smb_rap* %63, i8 signext 87, i32 1, i32 %64)
  %66 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %67 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %68 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @smb_rap_rqparam_z(%struct.smb_rap* %66, i8* %69)
  %71 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %72 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %73 = getelementptr inbounds %struct.smb_rap, %struct.smb_rap* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @smb_rap_rqparam_z(%struct.smb_rap* %71, i8* %74)
  %76 = load %struct.smb_rap*, %struct.smb_rap** %10, align 8
  %77 = load %struct.smb_rap**, %struct.smb_rap*** %9, align 8
  store %struct.smb_rap* %76, %struct.smb_rap** %77, align 8
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %56, %18
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bzero(%struct.smb_rap*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @smb_rap_parserqparam(i8*, i8**, i32*) #1

declare dso_local i32 @smb_rap_rqparam(%struct.smb_rap*, i8 signext, i32, i32) #1

declare dso_local i32 @smb_rap_rqparam_z(%struct.smb_rap*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_le64addr_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_le64addr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*)* }
%struct.bsnamemem = type { i8* }

@BUFSIZE = common dso_local global i32 0, align 4
@hex = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [29 x i8] c"le64addr_string: strdup(buf)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @le64addr_string(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bsnamemem*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 8, i32* %6, align 4
  %13 = load i32, i32* @BUFSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.bsnamemem* @lookup_bytestring(%struct.TYPE_5__* %17, i32* %18, i32 8)
  store %struct.bsnamemem* %19, %struct.bsnamemem** %9, align 8
  %20 = load %struct.bsnamemem*, %struct.bsnamemem** %9, align 8
  %21 = getelementptr inbounds %struct.bsnamemem, %struct.bsnamemem* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.bsnamemem*, %struct.bsnamemem** %9, align 8
  %26 = getelementptr inbounds %struct.bsnamemem, %struct.bsnamemem* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %87

28:                                               ; preds = %2
  store i8* %16, i8** %8, align 8
  store i32 8, i32* %7, align 4
  br label %29

29:                                               ; preds = %63, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %29
  %33 = load i8**, i8*** @hex, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = getelementptr inbounds i32, i32* %37, i64 -1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %33, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %43 to i8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  store i8 %44, i8* %45, align 1
  %47 = load i8**, i8*** @hex, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = getelementptr inbounds i32, i32* %51, i64 -1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 15
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %47, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %57 to i8
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  store i8 58, i8* %61, align 1
  br label %63

63:                                               ; preds = %32
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %7, align 4
  br label %29

66:                                               ; preds = %29
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  store i8 0, i8* %69, align 1
  %70 = call i8* @strdup(i8* %16)
  %71 = load %struct.bsnamemem*, %struct.bsnamemem** %9, align 8
  %72 = getelementptr inbounds %struct.bsnamemem, %struct.bsnamemem* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.bsnamemem*, %struct.bsnamemem** %9, align 8
  %74 = getelementptr inbounds %struct.bsnamemem, %struct.bsnamemem* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = call i32 %80(%struct.TYPE_5__* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %77, %66
  %84 = load %struct.bsnamemem*, %struct.bsnamemem** %9, align 8
  %85 = getelementptr inbounds %struct.bsnamemem, %struct.bsnamemem* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %87

87:                                               ; preds = %83, %24
  %88 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.bsnamemem* @lookup_bytestring(%struct.TYPE_5__*, i32*, i32) #2

declare dso_local i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

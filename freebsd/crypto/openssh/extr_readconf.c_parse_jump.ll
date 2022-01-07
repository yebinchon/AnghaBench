; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_parse_jump.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_parse_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8*, i8*, i32* }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_jump(i8* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %22, null
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi i1 [ false, %3 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i8* @xstrdup(i8* %29)
  store i8* %30, i8** %8, align 8
  store i8* %30, i8** %7, align 8
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %70, %24
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strcasecmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %74

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @strrchr(i8* %38, i8 signext 44)
  store i8* %39, i8** %9, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  store i8* %42, i8** %9, align 8
  br label %46

43:                                               ; preds = %37
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  store i8 0, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %41
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @parse_ssh_uri(i8* %50, i8** %11, i8** %10, i32* %13)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = call i64 @parse_user_host_port(i8* %54, i8** %11, i8** %10, i32* %13)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %49
  br label %125

58:                                               ; preds = %53
  br label %69

59:                                               ; preds = %46
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @parse_ssh_uri(i8* %60, i8** null, i8** null, i32* null)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @parse_user_host_port(i8* %64, i8** null, i8** null, i32* null)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %59
  br label %125

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %58
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %69
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %71, %72
  br i1 %73, label %32, label %74

74:                                               ; preds = %70, %36
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %124

77:                                               ; preds = %74
  %78 = load i8*, i8** %4, align 8
  %79 = call i64 @strcasecmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = call i8* @xstrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 8
  br label %123

87:                                               ; preds = %77
  %88 = load i8*, i8** %11, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = call i8* @xstrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  store i32* %98, i32** %100, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = call i8* @strrchr(i8* %101, i8 signext 44)
  store i8* %102, i8** %9, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %122

104:                                              ; preds = %87
  %105 = load i8*, i8** %9, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = icmp ne i8* %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load i8*, i8** %4, align 8
  %110 = call i8* @xstrdup(i8* %109)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = getelementptr inbounds i8, i8* %115, i64 %120
  store i8 0, i8* %121, align 1
  br label %122

122:                                              ; preds = %108, %104, %87
  br label %123

123:                                              ; preds = %122, %81
  br label %124

124:                                              ; preds = %123, %74
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %124, %67, %57
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i8*, i8** %10, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load i32, i32* %12, align 4
  ret i32 %132
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @parse_ssh_uri(i8*, i8**, i8**, i32*) #1

declare dso_local i64 @parse_user_host_port(i8*, i8**, i8**, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
